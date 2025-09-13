.class public interface abstract Lcom/facebook/react/devsupport/interfaces/DevSupportManager;
.super Ljava/lang/Object;
.source "DevSupportManager.kt"

# interfaces
.implements Lcom/facebook/react/bridge/JSExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/devsupport/interfaces/DevSupportManager$PackagerLocationCustomizer;,
        Lcom/facebook/react/devsupport/interfaces/DevSupportManager$PausedInDebuggerOverlayCommandListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c4\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008f\u0018\u00002\u00020\u0001:\u0002stJ\u001c\u0010-\u001a\u00020.2\u0008\u0010/\u001a\u0004\u0018\u00010\u00112\u0008\u00100\u001a\u0004\u0018\u000101H&J\u0014\u00102\u001a\u0004\u0018\u0001032\u0008\u00104\u001a\u0004\u0018\u00010\u0011H&J\u0014\u00105\u001a\u0004\u0018\u0001062\u0008\u00107\u001a\u0004\u0018\u00010\u0011H&J\u0012\u00108\u001a\u00020.2\u0008\u00109\u001a\u0004\u0018\u000103H&J\u001c\u0010:\u001a\u0004\u0018\u00010;2\u0006\u0010<\u001a\u00020\u00112\u0008\u0010=\u001a\u0004\u0018\u00010;H&J\u0008\u0010>\u001a\u00020.H&J\u0008\u0010?\u001a\u00020\u000bH&J\u0008\u0010@\u001a\u00020.H&J\u0008\u0010A\u001a\u00020.H&J\u0010\u0010B\u001a\u00020.2\u0006\u0010C\u001a\u00020DH&J\u0018\u0010E\u001a\u00020.2\u0006\u0010F\u001a\u00020\u00112\u0006\u0010C\u001a\u00020GH&J\u0010\u0010H\u001a\u00020.2\u0006\u0010I\u001a\u00020JH&J\u0010\u0010K\u001a\u00020.2\u0006\u0010I\u001a\u00020JH&J\u0008\u0010L\u001a\u00020.H&J8\u0010M\u001a\u0016\u0012\u0004\u0012\u00020\u0011\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001c0\u001b\u0018\u00010N2\u001a\u0010O\u001a\u0016\u0012\u0004\u0012\u00020\u0011\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001c0\u001b\u0018\u00010NH&J\u0012\u0010P\u001a\u00020.2\u0008\u0010Q\u001a\u0004\u0018\u00010RH&J\u0018\u0010S\u001a\u00020.2\u0006\u0010T\u001a\u00020\u00112\u0006\u0010C\u001a\u00020UH&J\u0008\u0010V\u001a\u00020.H&J\u0018\u0010W\u001a\u00020.2\u0006\u0010X\u001a\u00020\u00112\u0006\u0010Y\u001a\u00020\u0011H&J\u0010\u0010Z\u001a\u00020.2\u0006\u0010[\u001a\u00020\u000bH&J\u0010\u0010\\\u001a\u00020.2\u0006\u0010]\u001a\u00020\u000bH&J\u0012\u0010^\u001a\u00020.2\u0008\u0010_\u001a\u0004\u0018\u00010`H&J\u0010\u0010a\u001a\u00020.2\u0006\u0010b\u001a\u00020\u000bH&J\u0008\u0010c\u001a\u00020.H&J$\u0010d\u001a\u00020.2\u0008\u0010e\u001a\u0004\u0018\u00010\u00112\u0008\u0010f\u001a\u0004\u0018\u00010g2\u0006\u0010h\u001a\u00020\u0017H&J\u001c\u0010i\u001a\u00020.2\u0008\u0010e\u001a\u0004\u0018\u00010\u00112\u0008\u0010j\u001a\u0004\u0018\u00010kH&J\u0018\u0010l\u001a\u00020.2\u0006\u0010e\u001a\u00020\u00112\u0006\u0010m\u001a\u00020nH&J\u0008\u0010o\u001a\u00020.H&J\u0008\u0010p\u001a\u00020.H&J\u0008\u0010q\u001a\u00020.H&J$\u0010r\u001a\u00020.2\u0008\u0010e\u001a\u0004\u0018\u00010\u00112\u0008\u0010f\u001a\u0004\u0018\u00010g2\u0006\u0010h\u001a\u00020\u0017H&R\u0014\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0018\u0010\n\u001a\u00020\u000bX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u0011X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0013R\u0012\u0010\u0016\u001a\u00020\u0017X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u001bX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001eR\u0014\u0010\u001f\u001a\u0004\u0018\u00010\u0011X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010\u0013R\u0014\u0010!\u001a\u0004\u0018\u00010\"X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010$R\u0014\u0010%\u001a\u0004\u0018\u00010&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010(R\u0014\u0010)\u001a\u0004\u0018\u00010\u0011X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010\u0013R\u0014\u0010+\u001a\u0004\u0018\u00010\u0011X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008,\u0010\u0013\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006u\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/facebook/react/devsupport/interfaces/DevSupportManager;",
        "Lcom/facebook/react/bridge/JSExceptionHandler;",
        "currentActivity",
        "Landroid/app/Activity;",
        "getCurrentActivity",
        "()Landroid/app/Activity;",
        "devSettings",
        "Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;",
        "getDevSettings",
        "()Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;",
        "devSupportEnabled",
        "",
        "getDevSupportEnabled",
        "()Z",
        "setDevSupportEnabled",
        "(Z)V",
        "downloadedJSBundleFile",
        "",
        "getDownloadedJSBundleFile",
        "()Ljava/lang/String;",
        "jSBundleURLForRemoteDebugging",
        "getJSBundleURLForRemoteDebugging",
        "lastErrorCookie",
        "",
        "getLastErrorCookie",
        "()I",
        "lastErrorStack",
        "",
        "Lcom/facebook/react/devsupport/interfaces/StackFrame;",
        "getLastErrorStack",
        "()[Lcom/facebook/react/devsupport/interfaces/StackFrame;",
        "lastErrorTitle",
        "getLastErrorTitle",
        "lastErrorType",
        "Lcom/facebook/react/devsupport/interfaces/ErrorType;",
        "getLastErrorType",
        "()Lcom/facebook/react/devsupport/interfaces/ErrorType;",
        "redBoxHandler",
        "Lcom/facebook/react/devsupport/interfaces/RedBoxHandler;",
        "getRedBoxHandler",
        "()Lcom/facebook/react/devsupport/interfaces/RedBoxHandler;",
        "sourceMapUrl",
        "getSourceMapUrl",
        "sourceUrl",
        "getSourceUrl",
        "addCustomDevOption",
        "",
        "optionName",
        "optionHandler",
        "Lcom/facebook/react/devsupport/interfaces/DevOptionHandler;",
        "createRootView",
        "Landroid/view/View;",
        "appKey",
        "createSurfaceDelegate",
        "Lcom/facebook/react/common/SurfaceDelegate;",
        "moduleName",
        "destroyRootView",
        "rootView",
        "downloadBundleResourceFromUrlSync",
        "Ljava/io/File;",
        "resourceURL",
        "outputFile",
        "handleReloadJS",
        "hasUpToDateJSBundleInCache",
        "hidePausedInDebuggerOverlay",
        "hideRedboxDialog",
        "isPackagerRunning",
        "callback",
        "Lcom/facebook/react/devsupport/interfaces/PackagerStatusCallback;",
        "loadSplitBundleFromServer",
        "bundlePath",
        "Lcom/facebook/react/devsupport/interfaces/DevSplitBundleCallback;",
        "onNewReactContextCreated",
        "reactContext",
        "Lcom/facebook/react/bridge/ReactContext;",
        "onReactInstanceDestroyed",
        "openDebugger",
        "processErrorCustomizers",
        "Landroid/util/Pair;",
        "errorInfo",
        "registerErrorCustomizer",
        "errorCustomizer",
        "Lcom/facebook/react/devsupport/interfaces/ErrorCustomizer;",
        "reloadJSFromServer",
        "bundleURL",
        "Lcom/facebook/react/devsupport/interfaces/BundleLoadCallback;",
        "reloadSettings",
        "setAdditionalOptionForPackager",
        "name",
        "value",
        "setFpsDebugEnabled",
        "isFpsDebugEnabled",
        "setHotModuleReplacementEnabled",
        "isHotModuleReplacementEnabled",
        "setPackagerLocationCustomizer",
        "packagerLocationCustomizer",
        "Lcom/facebook/react/devsupport/interfaces/DevSupportManager$PackagerLocationCustomizer;",
        "setRemoteJSDebugEnabled",
        "isRemoteJSDebugEnabled",
        "showDevOptionsDialog",
        "showNewJSError",
        "message",
        "details",
        "Lcom/facebook/react/bridge/ReadableArray;",
        "errorCookie",
        "showNewJavaError",
        "e",
        "",
        "showPausedInDebuggerOverlay",
        "listener",
        "Lcom/facebook/react/devsupport/interfaces/DevSupportManager$PausedInDebuggerOverlayCommandListener;",
        "startInspector",
        "stopInspector",
        "toggleElementInspector",
        "updateJSError",
        "PackagerLocationCustomizer",
        "PausedInDebuggerOverlayCommandListener",
        "ReactAndroid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract addCustomDevOption(Ljava/lang/String;Lcom/facebook/react/devsupport/interfaces/DevOptionHandler;)V
.end method

.method public abstract createRootView(Ljava/lang/String;)Landroid/view/View;
.end method

.method public abstract createSurfaceDelegate(Ljava/lang/String;)Lcom/facebook/react/common/SurfaceDelegate;
.end method

.method public abstract destroyRootView(Landroid/view/View;)V
.end method

.method public abstract downloadBundleResourceFromUrlSync(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
.end method

.method public abstract getCurrentActivity()Landroid/app/Activity;
.end method

.method public abstract getDevSettings()Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;
.end method

.method public abstract getDevSupportEnabled()Z
.end method

.method public abstract getDownloadedJSBundleFile()Ljava/lang/String;
.end method

.method public abstract getJSBundleURLForRemoteDebugging()Ljava/lang/String;
.end method

.method public abstract getLastErrorCookie()I
.end method

.method public abstract getLastErrorStack()[Lcom/facebook/react/devsupport/interfaces/StackFrame;
.end method

.method public abstract getLastErrorTitle()Ljava/lang/String;
.end method

.method public abstract getLastErrorType()Lcom/facebook/react/devsupport/interfaces/ErrorType;
.end method

.method public abstract getRedBoxHandler()Lcom/facebook/react/devsupport/interfaces/RedBoxHandler;
.end method

.method public abstract getSourceMapUrl()Ljava/lang/String;
.end method

.method public abstract getSourceUrl()Ljava/lang/String;
.end method

.method public abstract handleReloadJS()V
.end method

.method public abstract hasUpToDateJSBundleInCache()Z
.end method

.method public abstract hidePausedInDebuggerOverlay()V
.end method

.method public abstract hideRedboxDialog()V
.end method

.method public abstract isPackagerRunning(Lcom/facebook/react/devsupport/interfaces/PackagerStatusCallback;)V
.end method

.method public abstract loadSplitBundleFromServer(Ljava/lang/String;Lcom/facebook/react/devsupport/interfaces/DevSplitBundleCallback;)V
.end method

.method public abstract onNewReactContextCreated(Lcom/facebook/react/bridge/ReactContext;)V
.end method

.method public abstract onReactInstanceDestroyed(Lcom/facebook/react/bridge/ReactContext;)V
.end method

.method public abstract openDebugger()V
.end method

.method public abstract processErrorCustomizers(Landroid/util/Pair;)Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[",
            "Lcom/facebook/react/devsupport/interfaces/StackFrame;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[",
            "Lcom/facebook/react/devsupport/interfaces/StackFrame;",
            ">;"
        }
    .end annotation
.end method

.method public abstract registerErrorCustomizer(Lcom/facebook/react/devsupport/interfaces/ErrorCustomizer;)V
.end method

.method public abstract reloadJSFromServer(Ljava/lang/String;Lcom/facebook/react/devsupport/interfaces/BundleLoadCallback;)V
.end method

.method public abstract reloadSettings()V
.end method

.method public abstract setAdditionalOptionForPackager(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setDevSupportEnabled(Z)V
.end method

.method public abstract setFpsDebugEnabled(Z)V
.end method

.method public abstract setHotModuleReplacementEnabled(Z)V
.end method

.method public abstract setPackagerLocationCustomizer(Lcom/facebook/react/devsupport/interfaces/DevSupportManager$PackagerLocationCustomizer;)V
.end method

.method public abstract setRemoteJSDebugEnabled(Z)V
.end method

.method public abstract showDevOptionsDialog()V
.end method

.method public abstract showNewJSError(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;I)V
.end method

.method public abstract showNewJavaError(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract showPausedInDebuggerOverlay(Ljava/lang/String;Lcom/facebook/react/devsupport/interfaces/DevSupportManager$PausedInDebuggerOverlayCommandListener;)V
.end method

.method public abstract startInspector()V
.end method

.method public abstract stopInspector()V
.end method

.method public abstract toggleElementInspector()V
.end method

.method public abstract updateJSError(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;I)V
.end method
