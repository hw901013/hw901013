﻿//------------------------------------------------------------------------------
// <auto-generated>
//     此代码由工具生成。
//     运行时版本:4.0.30319.18051
//
//     对此文件的更改可能会导致不正确的行为，并且如果
//     重新生成代码，这些更改将会丢失。
// </auto-generated>
//------------------------------------------------------------------------------

namespace LAb.ZH.SNMP.Win.ServiceReference1 {
    
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="ServiceReference1.ZhEasySnmp")]
    public interface ZhEasySnmp {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ZhEasySnmp/SearchManage", ReplyAction="http://tempuri.org/ZhEasySnmp/SearchManageResponse")]
        string SearchManage(string ip);
        
        [System.ServiceModel.OperationContractAttribute(AsyncPattern=true, Action="http://tempuri.org/ZhEasySnmp/SearchManage", ReplyAction="http://tempuri.org/ZhEasySnmp/SearchManageResponse")]
        System.IAsyncResult BeginSearchManage(string ip, System.AsyncCallback callback, object asyncState);
        
        string EndSearchManage(System.IAsyncResult result);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ZhEasySnmp/UpadteInit", ReplyAction="http://tempuri.org/ZhEasySnmp/UpadteInitResponse")]
        void UpadteInit();
        
        [System.ServiceModel.OperationContractAttribute(AsyncPattern=true, Action="http://tempuri.org/ZhEasySnmp/UpadteInit", ReplyAction="http://tempuri.org/ZhEasySnmp/UpadteInitResponse")]
        System.IAsyncResult BeginUpadteInit(System.AsyncCallback callback, object asyncState);
        
        void EndUpadteInit(System.IAsyncResult result);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ZhEasySnmp/GetCount", ReplyAction="http://tempuri.org/ZhEasySnmp/GetCountResponse")]
        string GetCount(string Clx);
        
        [System.ServiceModel.OperationContractAttribute(AsyncPattern=true, Action="http://tempuri.org/ZhEasySnmp/GetCount", ReplyAction="http://tempuri.org/ZhEasySnmp/GetCountResponse")]
        System.IAsyncResult BeginGetCount(string Clx, System.AsyncCallback callback, object asyncState);
        
        string EndGetCount(System.IAsyncResult result);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ZhEasySnmp/SearchSwitch", ReplyAction="http://tempuri.org/ZhEasySnmp/SearchSwitchResponse")]
        string SearchSwitch(string ip);
        
        [System.ServiceModel.OperationContractAttribute(AsyncPattern=true, Action="http://tempuri.org/ZhEasySnmp/SearchSwitch", ReplyAction="http://tempuri.org/ZhEasySnmp/SearchSwitchResponse")]
        System.IAsyncResult BeginSearchSwitch(string ip, System.AsyncCallback callback, object asyncState);
        
        string EndSearchSwitch(System.IAsyncResult result);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ZhEasySnmp/SearchTp", ReplyAction="http://tempuri.org/ZhEasySnmp/SearchTpResponse")]
        string SearchTp(string ip);
        
        [System.ServiceModel.OperationContractAttribute(AsyncPattern=true, Action="http://tempuri.org/ZhEasySnmp/SearchTp", ReplyAction="http://tempuri.org/ZhEasySnmp/SearchTpResponse")]
        System.IAsyncResult BeginSearchTp(string ip, System.AsyncCallback callback, object asyncState);
        
        string EndSearchTp(System.IAsyncResult result);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ZhEasySnmp/GetServerInfo", ReplyAction="http://tempuri.org/ZhEasySnmp/GetServerInfoResponse")]
        string GetServerInfo(string Lx);
        
        [System.ServiceModel.OperationContractAttribute(AsyncPattern=true, Action="http://tempuri.org/ZhEasySnmp/GetServerInfo", ReplyAction="http://tempuri.org/ZhEasySnmp/GetServerInfoResponse")]
        System.IAsyncResult BeginGetServerInfo(string Lx, System.AsyncCallback callback, object asyncState);
        
        string EndGetServerInfo(System.IAsyncResult result);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ZhEasySnmp/gets", ReplyAction="http://tempuri.org/ZhEasySnmp/getsResponse")]
        string gets(string ip, string oid);
        
        [System.ServiceModel.OperationContractAttribute(AsyncPattern=true, Action="http://tempuri.org/ZhEasySnmp/gets", ReplyAction="http://tempuri.org/ZhEasySnmp/getsResponse")]
        System.IAsyncResult Begingets(string ip, string oid, System.AsyncCallback callback, object asyncState);
        
        string Endgets(System.IAsyncResult result);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ZhEasySnmp/alter", ReplyAction="http://tempuri.org/ZhEasySnmp/alterResponse")]
        string alter();
        
        [System.ServiceModel.OperationContractAttribute(AsyncPattern=true, Action="http://tempuri.org/ZhEasySnmp/alter", ReplyAction="http://tempuri.org/ZhEasySnmp/alterResponse")]
        System.IAsyncResult Beginalter(System.AsyncCallback callback, object asyncState);
        
        string Endalter(System.IAsyncResult result);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface ZhEasySnmpChannel : LAb.ZH.SNMP.Win.ServiceReference1.ZhEasySnmp, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class SearchManageCompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs {
        
        private object[] results;
        
        public SearchManageCompletedEventArgs(object[] results, System.Exception exception, bool cancelled, object userState) : 
                base(exception, cancelled, userState) {
            this.results = results;
        }
        
        public string Result {
            get {
                base.RaiseExceptionIfNecessary();
                return ((string)(this.results[0]));
            }
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class GetCountCompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs {
        
        private object[] results;
        
        public GetCountCompletedEventArgs(object[] results, System.Exception exception, bool cancelled, object userState) : 
                base(exception, cancelled, userState) {
            this.results = results;
        }
        
        public string Result {
            get {
                base.RaiseExceptionIfNecessary();
                return ((string)(this.results[0]));
            }
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class SearchSwitchCompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs {
        
        private object[] results;
        
        public SearchSwitchCompletedEventArgs(object[] results, System.Exception exception, bool cancelled, object userState) : 
                base(exception, cancelled, userState) {
            this.results = results;
        }
        
        public string Result {
            get {
                base.RaiseExceptionIfNecessary();
                return ((string)(this.results[0]));
            }
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class SearchTpCompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs {
        
        private object[] results;
        
        public SearchTpCompletedEventArgs(object[] results, System.Exception exception, bool cancelled, object userState) : 
                base(exception, cancelled, userState) {
            this.results = results;
        }
        
        public string Result {
            get {
                base.RaiseExceptionIfNecessary();
                return ((string)(this.results[0]));
            }
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class GetServerInfoCompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs {
        
        private object[] results;
        
        public GetServerInfoCompletedEventArgs(object[] results, System.Exception exception, bool cancelled, object userState) : 
                base(exception, cancelled, userState) {
            this.results = results;
        }
        
        public string Result {
            get {
                base.RaiseExceptionIfNecessary();
                return ((string)(this.results[0]));
            }
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class getsCompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs {
        
        private object[] results;
        
        public getsCompletedEventArgs(object[] results, System.Exception exception, bool cancelled, object userState) : 
                base(exception, cancelled, userState) {
            this.results = results;
        }
        
        public string Result {
            get {
                base.RaiseExceptionIfNecessary();
                return ((string)(this.results[0]));
            }
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class alterCompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs {
        
        private object[] results;
        
        public alterCompletedEventArgs(object[] results, System.Exception exception, bool cancelled, object userState) : 
                base(exception, cancelled, userState) {
            this.results = results;
        }
        
        public string Result {
            get {
                base.RaiseExceptionIfNecessary();
                return ((string)(this.results[0]));
            }
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class ZhEasySnmpClient : System.ServiceModel.ClientBase<LAb.ZH.SNMP.Win.ServiceReference1.ZhEasySnmp>, LAb.ZH.SNMP.Win.ServiceReference1.ZhEasySnmp {
        
        private BeginOperationDelegate onBeginSearchManageDelegate;
        
        private EndOperationDelegate onEndSearchManageDelegate;
        
        private System.Threading.SendOrPostCallback onSearchManageCompletedDelegate;
        
        private BeginOperationDelegate onBeginUpadteInitDelegate;
        
        private EndOperationDelegate onEndUpadteInitDelegate;
        
        private System.Threading.SendOrPostCallback onUpadteInitCompletedDelegate;
        
        private BeginOperationDelegate onBeginGetCountDelegate;
        
        private EndOperationDelegate onEndGetCountDelegate;
        
        private System.Threading.SendOrPostCallback onGetCountCompletedDelegate;
        
        private BeginOperationDelegate onBeginSearchSwitchDelegate;
        
        private EndOperationDelegate onEndSearchSwitchDelegate;
        
        private System.Threading.SendOrPostCallback onSearchSwitchCompletedDelegate;
        
        private BeginOperationDelegate onBeginSearchTpDelegate;
        
        private EndOperationDelegate onEndSearchTpDelegate;
        
        private System.Threading.SendOrPostCallback onSearchTpCompletedDelegate;
        
        private BeginOperationDelegate onBeginGetServerInfoDelegate;
        
        private EndOperationDelegate onEndGetServerInfoDelegate;
        
        private System.Threading.SendOrPostCallback onGetServerInfoCompletedDelegate;
        
        private BeginOperationDelegate onBegingetsDelegate;
        
        private EndOperationDelegate onEndgetsDelegate;
        
        private System.Threading.SendOrPostCallback ongetsCompletedDelegate;
        
        private BeginOperationDelegate onBeginalterDelegate;
        
        private EndOperationDelegate onEndalterDelegate;
        
        private System.Threading.SendOrPostCallback onalterCompletedDelegate;
        
        public ZhEasySnmpClient() {
        }
        
        public ZhEasySnmpClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public ZhEasySnmpClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public ZhEasySnmpClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public ZhEasySnmpClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public event System.EventHandler<SearchManageCompletedEventArgs> SearchManageCompleted;
        
        public event System.EventHandler<System.ComponentModel.AsyncCompletedEventArgs> UpadteInitCompleted;
        
        public event System.EventHandler<GetCountCompletedEventArgs> GetCountCompleted;
        
        public event System.EventHandler<SearchSwitchCompletedEventArgs> SearchSwitchCompleted;
        
        public event System.EventHandler<SearchTpCompletedEventArgs> SearchTpCompleted;
        
        public event System.EventHandler<GetServerInfoCompletedEventArgs> GetServerInfoCompleted;
        
        public event System.EventHandler<getsCompletedEventArgs> getsCompleted;
        
        public event System.EventHandler<alterCompletedEventArgs> alterCompleted;
        
        public string SearchManage(string ip) {
            return base.Channel.SearchManage(ip);
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        public System.IAsyncResult BeginSearchManage(string ip, System.AsyncCallback callback, object asyncState) {
            return base.Channel.BeginSearchManage(ip, callback, asyncState);
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        public string EndSearchManage(System.IAsyncResult result) {
            return base.Channel.EndSearchManage(result);
        }
        
        private System.IAsyncResult OnBeginSearchManage(object[] inValues, System.AsyncCallback callback, object asyncState) {
            string ip = ((string)(inValues[0]));
            return this.BeginSearchManage(ip, callback, asyncState);
        }
        
        private object[] OnEndSearchManage(System.IAsyncResult result) {
            string retVal = this.EndSearchManage(result);
            return new object[] {
                    retVal};
        }
        
        private void OnSearchManageCompleted(object state) {
            if ((this.SearchManageCompleted != null)) {
                InvokeAsyncCompletedEventArgs e = ((InvokeAsyncCompletedEventArgs)(state));
                this.SearchManageCompleted(this, new SearchManageCompletedEventArgs(e.Results, e.Error, e.Cancelled, e.UserState));
            }
        }
        
        public void SearchManageAsync(string ip) {
            this.SearchManageAsync(ip, null);
        }
        
        public void SearchManageAsync(string ip, object userState) {
            if ((this.onBeginSearchManageDelegate == null)) {
                this.onBeginSearchManageDelegate = new BeginOperationDelegate(this.OnBeginSearchManage);
            }
            if ((this.onEndSearchManageDelegate == null)) {
                this.onEndSearchManageDelegate = new EndOperationDelegate(this.OnEndSearchManage);
            }
            if ((this.onSearchManageCompletedDelegate == null)) {
                this.onSearchManageCompletedDelegate = new System.Threading.SendOrPostCallback(this.OnSearchManageCompleted);
            }
            base.InvokeAsync(this.onBeginSearchManageDelegate, new object[] {
                        ip}, this.onEndSearchManageDelegate, this.onSearchManageCompletedDelegate, userState);
        }
        
        public void UpadteInit() {
            base.Channel.UpadteInit();
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        public System.IAsyncResult BeginUpadteInit(System.AsyncCallback callback, object asyncState) {
            return base.Channel.BeginUpadteInit(callback, asyncState);
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        public void EndUpadteInit(System.IAsyncResult result) {
            base.Channel.EndUpadteInit(result);
        }
        
        private System.IAsyncResult OnBeginUpadteInit(object[] inValues, System.AsyncCallback callback, object asyncState) {
            return this.BeginUpadteInit(callback, asyncState);
        }
        
        private object[] OnEndUpadteInit(System.IAsyncResult result) {
            this.EndUpadteInit(result);
            return null;
        }
        
        private void OnUpadteInitCompleted(object state) {
            if ((this.UpadteInitCompleted != null)) {
                InvokeAsyncCompletedEventArgs e = ((InvokeAsyncCompletedEventArgs)(state));
                this.UpadteInitCompleted(this, new System.ComponentModel.AsyncCompletedEventArgs(e.Error, e.Cancelled, e.UserState));
            }
        }
        
        public void UpadteInitAsync() {
            this.UpadteInitAsync(null);
        }
        
        public void UpadteInitAsync(object userState) {
            if ((this.onBeginUpadteInitDelegate == null)) {
                this.onBeginUpadteInitDelegate = new BeginOperationDelegate(this.OnBeginUpadteInit);
            }
            if ((this.onEndUpadteInitDelegate == null)) {
                this.onEndUpadteInitDelegate = new EndOperationDelegate(this.OnEndUpadteInit);
            }
            if ((this.onUpadteInitCompletedDelegate == null)) {
                this.onUpadteInitCompletedDelegate = new System.Threading.SendOrPostCallback(this.OnUpadteInitCompleted);
            }
            base.InvokeAsync(this.onBeginUpadteInitDelegate, null, this.onEndUpadteInitDelegate, this.onUpadteInitCompletedDelegate, userState);
        }
        
        public string GetCount(string Clx) {
            return base.Channel.GetCount(Clx);
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        public System.IAsyncResult BeginGetCount(string Clx, System.AsyncCallback callback, object asyncState) {
            return base.Channel.BeginGetCount(Clx, callback, asyncState);
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        public string EndGetCount(System.IAsyncResult result) {
            return base.Channel.EndGetCount(result);
        }
        
        private System.IAsyncResult OnBeginGetCount(object[] inValues, System.AsyncCallback callback, object asyncState) {
            string Clx = ((string)(inValues[0]));
            return this.BeginGetCount(Clx, callback, asyncState);
        }
        
        private object[] OnEndGetCount(System.IAsyncResult result) {
            string retVal = this.EndGetCount(result);
            return new object[] {
                    retVal};
        }
        
        private void OnGetCountCompleted(object state) {
            if ((this.GetCountCompleted != null)) {
                InvokeAsyncCompletedEventArgs e = ((InvokeAsyncCompletedEventArgs)(state));
                this.GetCountCompleted(this, new GetCountCompletedEventArgs(e.Results, e.Error, e.Cancelled, e.UserState));
            }
        }
        
        public void GetCountAsync(string Clx) {
            this.GetCountAsync(Clx, null);
        }
        
        public void GetCountAsync(string Clx, object userState) {
            if ((this.onBeginGetCountDelegate == null)) {
                this.onBeginGetCountDelegate = new BeginOperationDelegate(this.OnBeginGetCount);
            }
            if ((this.onEndGetCountDelegate == null)) {
                this.onEndGetCountDelegate = new EndOperationDelegate(this.OnEndGetCount);
            }
            if ((this.onGetCountCompletedDelegate == null)) {
                this.onGetCountCompletedDelegate = new System.Threading.SendOrPostCallback(this.OnGetCountCompleted);
            }
            base.InvokeAsync(this.onBeginGetCountDelegate, new object[] {
                        Clx}, this.onEndGetCountDelegate, this.onGetCountCompletedDelegate, userState);
        }
        
        public string SearchSwitch(string ip) {
            return base.Channel.SearchSwitch(ip);
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        public System.IAsyncResult BeginSearchSwitch(string ip, System.AsyncCallback callback, object asyncState) {
            return base.Channel.BeginSearchSwitch(ip, callback, asyncState);
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        public string EndSearchSwitch(System.IAsyncResult result) {
            return base.Channel.EndSearchSwitch(result);
        }
        
        private System.IAsyncResult OnBeginSearchSwitch(object[] inValues, System.AsyncCallback callback, object asyncState) {
            string ip = ((string)(inValues[0]));
            return this.BeginSearchSwitch(ip, callback, asyncState);
        }
        
        private object[] OnEndSearchSwitch(System.IAsyncResult result) {
            string retVal = this.EndSearchSwitch(result);
            return new object[] {
                    retVal};
        }
        
        private void OnSearchSwitchCompleted(object state) {
            if ((this.SearchSwitchCompleted != null)) {
                InvokeAsyncCompletedEventArgs e = ((InvokeAsyncCompletedEventArgs)(state));
                this.SearchSwitchCompleted(this, new SearchSwitchCompletedEventArgs(e.Results, e.Error, e.Cancelled, e.UserState));
            }
        }
        
        public void SearchSwitchAsync(string ip) {
            this.SearchSwitchAsync(ip, null);
        }
        
        public void SearchSwitchAsync(string ip, object userState) {
            if ((this.onBeginSearchSwitchDelegate == null)) {
                this.onBeginSearchSwitchDelegate = new BeginOperationDelegate(this.OnBeginSearchSwitch);
            }
            if ((this.onEndSearchSwitchDelegate == null)) {
                this.onEndSearchSwitchDelegate = new EndOperationDelegate(this.OnEndSearchSwitch);
            }
            if ((this.onSearchSwitchCompletedDelegate == null)) {
                this.onSearchSwitchCompletedDelegate = new System.Threading.SendOrPostCallback(this.OnSearchSwitchCompleted);
            }
            base.InvokeAsync(this.onBeginSearchSwitchDelegate, new object[] {
                        ip}, this.onEndSearchSwitchDelegate, this.onSearchSwitchCompletedDelegate, userState);
        }
        
        public string SearchTp(string ip) {
            return base.Channel.SearchTp(ip);
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        public System.IAsyncResult BeginSearchTp(string ip, System.AsyncCallback callback, object asyncState) {
            return base.Channel.BeginSearchTp(ip, callback, asyncState);
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        public string EndSearchTp(System.IAsyncResult result) {
            return base.Channel.EndSearchTp(result);
        }
        
        private System.IAsyncResult OnBeginSearchTp(object[] inValues, System.AsyncCallback callback, object asyncState) {
            string ip = ((string)(inValues[0]));
            return this.BeginSearchTp(ip, callback, asyncState);
        }
        
        private object[] OnEndSearchTp(System.IAsyncResult result) {
            string retVal = this.EndSearchTp(result);
            return new object[] {
                    retVal};
        }
        
        private void OnSearchTpCompleted(object state) {
            if ((this.SearchTpCompleted != null)) {
                InvokeAsyncCompletedEventArgs e = ((InvokeAsyncCompletedEventArgs)(state));
                this.SearchTpCompleted(this, new SearchTpCompletedEventArgs(e.Results, e.Error, e.Cancelled, e.UserState));
            }
        }
        
        public void SearchTpAsync(string ip) {
            this.SearchTpAsync(ip, null);
        }
        
        public void SearchTpAsync(string ip, object userState) {
            if ((this.onBeginSearchTpDelegate == null)) {
                this.onBeginSearchTpDelegate = new BeginOperationDelegate(this.OnBeginSearchTp);
            }
            if ((this.onEndSearchTpDelegate == null)) {
                this.onEndSearchTpDelegate = new EndOperationDelegate(this.OnEndSearchTp);
            }
            if ((this.onSearchTpCompletedDelegate == null)) {
                this.onSearchTpCompletedDelegate = new System.Threading.SendOrPostCallback(this.OnSearchTpCompleted);
            }
            base.InvokeAsync(this.onBeginSearchTpDelegate, new object[] {
                        ip}, this.onEndSearchTpDelegate, this.onSearchTpCompletedDelegate, userState);
        }
        
        public string GetServerInfo(string Lx) {
            return base.Channel.GetServerInfo(Lx);
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        public System.IAsyncResult BeginGetServerInfo(string Lx, System.AsyncCallback callback, object asyncState) {
            return base.Channel.BeginGetServerInfo(Lx, callback, asyncState);
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        public string EndGetServerInfo(System.IAsyncResult result) {
            return base.Channel.EndGetServerInfo(result);
        }
        
        private System.IAsyncResult OnBeginGetServerInfo(object[] inValues, System.AsyncCallback callback, object asyncState) {
            string Lx = ((string)(inValues[0]));
            return this.BeginGetServerInfo(Lx, callback, asyncState);
        }
        
        private object[] OnEndGetServerInfo(System.IAsyncResult result) {
            string retVal = this.EndGetServerInfo(result);
            return new object[] {
                    retVal};
        }
        
        private void OnGetServerInfoCompleted(object state) {
            if ((this.GetServerInfoCompleted != null)) {
                InvokeAsyncCompletedEventArgs e = ((InvokeAsyncCompletedEventArgs)(state));
                this.GetServerInfoCompleted(this, new GetServerInfoCompletedEventArgs(e.Results, e.Error, e.Cancelled, e.UserState));
            }
        }
        
        public void GetServerInfoAsync(string Lx) {
            this.GetServerInfoAsync(Lx, null);
        }
        
        public void GetServerInfoAsync(string Lx, object userState) {
            if ((this.onBeginGetServerInfoDelegate == null)) {
                this.onBeginGetServerInfoDelegate = new BeginOperationDelegate(this.OnBeginGetServerInfo);
            }
            if ((this.onEndGetServerInfoDelegate == null)) {
                this.onEndGetServerInfoDelegate = new EndOperationDelegate(this.OnEndGetServerInfo);
            }
            if ((this.onGetServerInfoCompletedDelegate == null)) {
                this.onGetServerInfoCompletedDelegate = new System.Threading.SendOrPostCallback(this.OnGetServerInfoCompleted);
            }
            base.InvokeAsync(this.onBeginGetServerInfoDelegate, new object[] {
                        Lx}, this.onEndGetServerInfoDelegate, this.onGetServerInfoCompletedDelegate, userState);
        }
        
        public string gets(string ip, string oid) {
            return base.Channel.gets(ip, oid);
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        public System.IAsyncResult Begingets(string ip, string oid, System.AsyncCallback callback, object asyncState) {
            return base.Channel.Begingets(ip, oid, callback, asyncState);
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        public string Endgets(System.IAsyncResult result) {
            return base.Channel.Endgets(result);
        }
        
        private System.IAsyncResult OnBegingets(object[] inValues, System.AsyncCallback callback, object asyncState) {
            string ip = ((string)(inValues[0]));
            string oid = ((string)(inValues[1]));
            return this.Begingets(ip, oid, callback, asyncState);
        }
        
        private object[] OnEndgets(System.IAsyncResult result) {
            string retVal = this.Endgets(result);
            return new object[] {
                    retVal};
        }
        
        private void OngetsCompleted(object state) {
            if ((this.getsCompleted != null)) {
                InvokeAsyncCompletedEventArgs e = ((InvokeAsyncCompletedEventArgs)(state));
                this.getsCompleted(this, new getsCompletedEventArgs(e.Results, e.Error, e.Cancelled, e.UserState));
            }
        }
        
        public void getsAsync(string ip, string oid) {
            this.getsAsync(ip, oid, null);
        }
        
        public void getsAsync(string ip, string oid, object userState) {
            if ((this.onBegingetsDelegate == null)) {
                this.onBegingetsDelegate = new BeginOperationDelegate(this.OnBegingets);
            }
            if ((this.onEndgetsDelegate == null)) {
                this.onEndgetsDelegate = new EndOperationDelegate(this.OnEndgets);
            }
            if ((this.ongetsCompletedDelegate == null)) {
                this.ongetsCompletedDelegate = new System.Threading.SendOrPostCallback(this.OngetsCompleted);
            }
            base.InvokeAsync(this.onBegingetsDelegate, new object[] {
                        ip,
                        oid}, this.onEndgetsDelegate, this.ongetsCompletedDelegate, userState);
        }
        
        public string alter() {
            return base.Channel.alter();
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        public System.IAsyncResult Beginalter(System.AsyncCallback callback, object asyncState) {
            return base.Channel.Beginalter(callback, asyncState);
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        public string Endalter(System.IAsyncResult result) {
            return base.Channel.Endalter(result);
        }
        
        private System.IAsyncResult OnBeginalter(object[] inValues, System.AsyncCallback callback, object asyncState) {
            return this.Beginalter(callback, asyncState);
        }
        
        private object[] OnEndalter(System.IAsyncResult result) {
            string retVal = this.Endalter(result);
            return new object[] {
                    retVal};
        }
        
        private void OnalterCompleted(object state) {
            if ((this.alterCompleted != null)) {
                InvokeAsyncCompletedEventArgs e = ((InvokeAsyncCompletedEventArgs)(state));
                this.alterCompleted(this, new alterCompletedEventArgs(e.Results, e.Error, e.Cancelled, e.UserState));
            }
        }
        
        public void alterAsync() {
            this.alterAsync(null);
        }
        
        public void alterAsync(object userState) {
            if ((this.onBeginalterDelegate == null)) {
                this.onBeginalterDelegate = new BeginOperationDelegate(this.OnBeginalter);
            }
            if ((this.onEndalterDelegate == null)) {
                this.onEndalterDelegate = new EndOperationDelegate(this.OnEndalter);
            }
            if ((this.onalterCompletedDelegate == null)) {
                this.onalterCompletedDelegate = new System.Threading.SendOrPostCallback(this.OnalterCompleted);
            }
            base.InvokeAsync(this.onBeginalterDelegate, null, this.onEndalterDelegate, this.onalterCompletedDelegate, userState);
        }
    }
}