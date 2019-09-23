using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net.Http;
using Windows.ApplicationModel.Background;
using System.Threading.Tasks;

namespace fos.cloudfprint
{
    public sealed class StartupTask : IBackgroundTask
    {
        private BackgroundTaskDeferral _deferral;
        private Task[] _tasks;
        private bool _isClosing = false;

        public bool IsClosing { get => _isClosing; }
        
        public void Run(IBackgroundTaskInstance taskInstance)
        { 
            // If you start any asynchronous methods here, prevent the task
            // from closing prematurely by using BackgroundTaskDeferral as
            // described in http://aka.ms/backgroundtaskdeferral

            taskInstance.Canceled += TaskInstance_Canceled;
            _deferral = taskInstance.GetDeferral();

            _tasks = new Task[1];
            _tasks[0] = Task.Run(() => {
//java -Duser.language=RU -Duser.region=ru -Djava.library.path=libs/ -jar cloudfprint.jar start
            });
        }

        private void TaskInstance_Canceled(IBackgroundTaskInstance sender, BackgroundTaskCancellationReason reason)
        {
            _isClosing = true;
            Task.WaitAll(_tasks);
            _deferral.Complete();
        }
    }
}