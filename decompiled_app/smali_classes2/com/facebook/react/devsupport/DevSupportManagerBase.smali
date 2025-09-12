.class public abstract Lcom/facebook/react/devsupport/DevSupportManagerBase;
.super Ljava/lang/Object;
.source "DevSupportManagerBase.java"

# interfaces
.implements Lcom/facebook/react/devsupport/interfaces/DevSupportManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/devsupport/DevSupportManagerBase$CallbackWithBundleLoader;
    }
.end annotation


# static fields
.field private static final EXOPACKAGE_LOCATION_FORMAT:Ljava/lang/String; = "/data/local/tmp/exopackage/%s//secondary-dex"

.field private static final JAVA_ERROR_COOKIE:I = -0x1

.field private static final JSEXCEPTION_ERROR_COOKIE:I = -0x1

.field private static final RELOAD_APP_ACTION_SUFFIX:Ljava/lang/String; = ".RELOAD_APP_ACTION"


# instance fields
.field private final mApplicationContext:Landroid/content/Context;

.field private final mBundleDownloadListener:Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;

.field private mCurrentContext:Lcom/facebook/react/bridge/ReactContext;

.field private final mCustomDevOptions:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/facebook/react/devsupport/interfaces/DevOptionHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mCustomPackagerCommandHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/react/packagerconnection/RequestHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mDebugOverlayController:Lcom/facebook/react/devsupport/DebugOverlayController;

.field private final mDefaultJSExceptionHandler:Lcom/facebook/react/bridge/DefaultJSExceptionHandler;

.field private final mDevLoadingViewManager:Lcom/facebook/react/devsupport/interfaces/DevLoadingViewManager;

.field private mDevLoadingViewVisible:Z

.field private mDevOptionsDialog:Landroid/app/AlertDialog;

.field private final mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;

.field private final mDevSettings:Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;

.field private mErrorCustomizers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/react/devsupport/interfaces/ErrorCustomizer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDevSupportEnabled:Z

.field private mIsPackagerConnected:Z

.field private mIsReceiverRegistered:Z

.field private mIsShakeDetectorStarted:Z

.field private final mJSAppBundleName:Ljava/lang/String;

.field private final mJSBundleDownloadedFile:Ljava/io/File;

.field private final mJSSplitBundlesDir:Ljava/io/File;

.field private mLastErrorCookie:I

.field private mLastErrorStack:[Lcom/facebook/react/devsupport/interfaces/StackFrame;

.field private mLastErrorTitle:Ljava/lang/String;

.field private mLastErrorType:Lcom/facebook/react/devsupport/interfaces/ErrorType;

.field private mPackagerLocationCustomizer:Lcom/facebook/react/devsupport/interfaces/DevSupportManager$PackagerLocationCustomizer;

.field private final mPausedInDebuggerOverlayManager:Lcom/facebook/react/devsupport/interfaces/PausedInDebuggerOverlayManager;

.field private mPendingJSSplitBundleRequests:I

.field private final mReactInstanceDevHelper:Lcom/facebook/react/devsupport/ReactInstanceDevHelper;

.field private final mRedBoxHandler:Lcom/facebook/react/devsupport/interfaces/RedBoxHandler;

.field private mRedBoxSurfaceDelegate:Lcom/facebook/react/common/SurfaceDelegate;

.field private final mReloadAppBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mShakeDetector:Lcom/facebook/react/common/ShakeDetector;

.field private final mSurfaceDelegateFactory:Lcom/facebook/react/common/SurfaceDelegateFactory;


# direct methods
.method public static synthetic $r8$lambda$-Mg4lK3OGgQqjdoERdNwjNBNWUc(Lcom/facebook/react/devsupport/DevSupportManagerBase;ILjava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->lambda$updateJSError$1(ILjava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6k05oTEjo5TewIJavchFBM8bKAE(Lcom/facebook/react/devsupport/DevSupportManagerBase;Ljava/lang/String;[Lcom/facebook/react/devsupport/interfaces/StackFrame;ILcom/facebook/react/devsupport/interfaces/ErrorType;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->lambda$showNewError$2(Ljava/lang/String;[Lcom/facebook/react/devsupport/interfaces/StackFrame;ILcom/facebook/react/devsupport/interfaces/ErrorType;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7B1aFc6aQfO_V_vtZZ-9vvRsSk0(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->lambda$toggleElementInspector$16()V

    return-void
.end method

.method public static synthetic $r8$lambda$7LlYR8GSJgC7bblrGh80aU0oAz8(Lcom/facebook/react/devsupport/DevSupportManagerBase;Lcom/facebook/react/devsupport/interfaces/PackagerStatusCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->lambda$isPackagerRunning$11(Lcom/facebook/react/devsupport/interfaces/PackagerStatusCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$A8hyAnkvtt-P5vzdFQokByZ3sRY(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->lambda$showDevOptionsDialog$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$G7nRi6H2bbCSl9pMxa1cYlXwHrs(Lcom/facebook/react/devsupport/DevSupportManagerBase;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->lambda$setFpsDebugEnabled$15(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$GbTQMtLoR-ShIuW-YZikG1usc0A(Lcom/facebook/react/devsupport/DevSupportManagerBase;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->lambda$reportBundleLoadingFailure$12(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$S796EMP-1DeaPBBsbGIO4O4nodo(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->reload()V

    return-void
.end method

.method public static synthetic $r8$lambda$UgHMzUTA4Rn2UJ6owz8KpQ8rJJo(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Landroid/content/Context;
    .locals 0

    invoke-direct {p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->lambda$new$0()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VlC3jr9osN9L8MNqbgE-bBxwhQ8(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->lambda$showDevOptionsDialog$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$deW_uOg5KnlwKJM0ZAXAC7qXyk8(Lcom/facebook/react/devsupport/DevSupportManagerBase;[Lcom/facebook/react/devsupport/interfaces/DevOptionHandler;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->lambda$showDevOptionsDialog$8([Lcom/facebook/react/devsupport/interfaces/DevOptionHandler;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$jbUhir6QCag5vVcNurvPfyg6DmA(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->lambda$showDevOptionsDialog$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$kASYbc1pF1YW_D9MlPlZa6O-alk(Lcom/facebook/react/devsupport/DevSupportManagerBase;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->lambda$setRemoteJSDebugEnabled$14(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$kxL5odU04qFi8AoP1t_g01rcQII(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->lambda$showDevOptionsDialog$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$lR0hTvp4TYF9dUr5WytkZvEC8PY(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->lambda$showDevOptionsDialog$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$n0BWOMTH8V4plgkcnf19YXLyvRM(Lcom/facebook/react/devsupport/DevSupportManagerBase;Ljava/lang/String;Ljava/io/File;Lcom/facebook/react/devsupport/DevSupportManagerBase$CallbackWithBundleLoader;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->lambda$fetchSplitBundleAndCreateBundleLoader$10(Ljava/lang/String;Ljava/io/File;Lcom/facebook/react/devsupport/DevSupportManagerBase$CallbackWithBundleLoader;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rQBFpRn3bA458T5gaknIVty0r-E(Lcom/facebook/react/devsupport/DevSupportManagerBase;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->lambda$setHotModuleReplacementEnabled$13(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$sNbbjeJEYgzX6y-d9BB101zWkG8(Lcom/facebook/react/devsupport/DevSupportManagerBase;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->lambda$showDevOptionsDialog$9(Landroid/content/DialogInterface;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmApplicationContext(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBundleDownloadListener(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;
    .locals 0

    iget-object p0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mBundleDownloadListener:Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentContext(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/bridge/ReactContext;
    .locals 0

    iget-object p0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mCurrentContext:Lcom/facebook/react/bridge/ReactContext;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCustomPackagerCommandHandlers(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mCustomPackagerCommandHandlers:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDevLoadingViewManager(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/devsupport/interfaces/DevLoadingViewManager;
    .locals 0

    iget-object p0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevLoadingViewManager:Lcom/facebook/react/devsupport/interfaces/DevLoadingViewManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDevServerHelper(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/devsupport/DevServerHelper;
    .locals 0

    iget-object p0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDevSettings(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;
    .locals 0

    iget-object p0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevSettings:Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReactInstanceDevHelper(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/devsupport/ReactInstanceDevHelper;
    .locals 0

    iget-object p0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mReactInstanceDevHelper:Lcom/facebook/react/devsupport/ReactInstanceDevHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsPackagerConnected(Lcom/facebook/react/devsupport/DevSupportManagerBase;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsPackagerConnected:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleCaptureHeap(Lcom/facebook/react/devsupport/DevSupportManagerBase;Lcom/facebook/react/packagerconnection/Responder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->handleCaptureHeap(Lcom/facebook/react/packagerconnection/Responder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhideSplitBundleDevLoadingView(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->hideSplitBundleDevLoadingView()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreportBundleLoadingFailure(Lcom/facebook/react/devsupport/DevSupportManagerBase;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->reportBundleLoadingFailure(Ljava/lang/Exception;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smgetReloadAppAction(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->getReloadAppAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/react/devsupport/ReactInstanceDevHelper;Ljava/lang/String;ZLcom/facebook/react/devsupport/interfaces/RedBoxHandler;Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;ILjava/util/Map;Lcom/facebook/react/common/SurfaceDelegateFactory;Lcom/facebook/react/devsupport/interfaces/DevLoadingViewManager;Lcom/facebook/react/devsupport/interfaces/PausedInDebuggerOverlayManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/react/devsupport/ReactInstanceDevHelper;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/facebook/react/devsupport/interfaces/RedBoxHandler;",
            "Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/react/packagerconnection/RequestHandler;",
            ">;",
            "Lcom/facebook/react/common/SurfaceDelegateFactory;",
            "Lcom/facebook/react/devsupport/interfaces/DevLoadingViewManager;",
            "Lcom/facebook/react/devsupport/interfaces/PausedInDebuggerOverlayManager;",
            ")V"
        }
    .end annotation

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mCustomDevOptions:Ljava/util/LinkedHashMap;

    const/4 v0, 0x0

    .line 108
    iput-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevLoadingViewVisible:Z

    .line 109
    iput v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mPendingJSSplitBundleRequests:I

    .line 112
    iput-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsReceiverRegistered:Z

    .line 113
    iput-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsShakeDetectorStarted:Z

    .line 114
    iput-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsDevSupportEnabled:Z

    .line 120
    iput v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mLastErrorCookie:I

    .line 141
    iput-object p2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mReactInstanceDevHelper:Lcom/facebook/react/devsupport/ReactInstanceDevHelper;

    .line 142
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    .line 143
    iput-object p3, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mJSAppBundleName:Ljava/lang/String;

    .line 144
    new-instance p3, Lcom/facebook/react/devsupport/DevInternalSettings;

    new-instance v1, Lcom/facebook/react/devsupport/DevSupportManagerBase$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase$$ExternalSyntheticLambda5;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V

    invoke-direct {p3, p1, v1}, Lcom/facebook/react/devsupport/DevInternalSettings;-><init>(Landroid/content/Context;Lcom/facebook/react/devsupport/DevInternalSettings$Listener;)V

    iput-object p3, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevSettings:Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;

    .line 145
    new-instance v1, Lcom/facebook/react/devsupport/DevServerHelper;

    .line 147
    invoke-interface {p3}, Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;->getPackagerConnectionSettings()Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;

    move-result-object v2

    invoke-direct {v1, p3, p1, v2}, Lcom/facebook/react/devsupport/DevServerHelper;-><init>(Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;Landroid/content/Context;Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;)V

    iput-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;

    .line 148
    iput-object p6, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mBundleDownloadListener:Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;

    .line 151
    new-instance p3, Lcom/facebook/react/common/ShakeDetector;

    new-instance p6, Lcom/facebook/react/devsupport/DevSupportManagerBase$$ExternalSyntheticLambda6;

    invoke-direct {p6, p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase$$ExternalSyntheticLambda6;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V

    invoke-direct {p3, p6, p7}, Lcom/facebook/react/common/ShakeDetector;-><init>(Lcom/facebook/react/common/ShakeDetector$ShakeListener;I)V

    iput-object p3, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mShakeDetector:Lcom/facebook/react/common/ShakeDetector;

    .line 153
    iput-object p8, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mCustomPackagerCommandHandlers:Ljava/util/Map;

    .line 156
    new-instance p3, Lcom/facebook/react/devsupport/DevSupportManagerBase$1;

    invoke-direct {p3, p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase$1;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V

    iput-object p3, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mReloadAppBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 178
    invoke-virtual {p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->getUniqueTag()Ljava/lang/String;

    move-result-object p3

    .line 179
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    const-string p7, "ReactNativeDevBundle.js"

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    .line 180
    new-instance p7, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p8

    invoke-direct {p7, p8, p6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p7, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mJSBundleDownloadedFile:Ljava/io/File;

    .line 182
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p3, p7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p6, "_dev_js_split_bundles"

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 183
    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mJSSplitBundlesDir:Ljava/io/File;

    .line 185
    new-instance p1, Lcom/facebook/react/bridge/DefaultJSExceptionHandler;

    invoke-direct {p1}, Lcom/facebook/react/bridge/DefaultJSExceptionHandler;-><init>()V

    iput-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDefaultJSExceptionHandler:Lcom/facebook/react/bridge/DefaultJSExceptionHandler;

    .line 187
    invoke-virtual {p0, p4}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->setDevSupportEnabled(Z)V

    .line 189
    iput-object p5, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mRedBoxHandler:Lcom/facebook/react/devsupport/interfaces/RedBoxHandler;

    if-eqz p10, :cond_0

    goto :goto_0

    .line 193
    :cond_0
    new-instance p10, Lcom/facebook/react/devsupport/DefaultDevLoadingViewImplementation;

    invoke-direct {p10, p2}, Lcom/facebook/react/devsupport/DefaultDevLoadingViewImplementation;-><init>(Lcom/facebook/react/devsupport/ReactInstanceDevHelper;)V

    :goto_0
    iput-object p10, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevLoadingViewManager:Lcom/facebook/react/devsupport/interfaces/DevLoadingViewManager;

    .line 194
    iput-object p9, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mSurfaceDelegateFactory:Lcom/facebook/react/common/SurfaceDelegateFactory;

    if-eqz p11, :cond_1

    goto :goto_1

    .line 198
    :cond_1
    new-instance p11, Lcom/facebook/react/devsupport/PausedInDebuggerOverlayDialogManager;

    new-instance p1, Lcom/facebook/react/devsupport/DevSupportManagerBase$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase$$ExternalSyntheticLambda7;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V

    invoke-direct {p11, p1}, Lcom/facebook/react/devsupport/PausedInDebuggerOverlayDialogManager;-><init>(Landroidx/core/util/Supplier;)V

    :goto_1
    iput-object p11, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mPausedInDebuggerOverlayManager:Lcom/facebook/react/devsupport/interfaces/PausedInDebuggerOverlayManager;

    return-void
.end method

.method private compatRegisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Z)V
    .locals 2

    .line 1165
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_1

    .line 1166
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v0, v1, :cond_1

    if-eqz p4, :cond_0

    const/4 p4, 0x2

    goto :goto_0

    :cond_0
    const/4 p4, 0x4

    .line 1167
    :goto_0
    invoke-virtual {p1, p2, p3, p4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_1

    .line 1170
    :cond_1
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_1
    return-void
.end method

.method private getJSExecutorDescription()Ljava/lang/String;
    .locals 1

    .line 572
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->getReactInstanceDevHelper()Lcom/facebook/react/devsupport/ReactInstanceDevHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/react/devsupport/ReactInstanceDevHelper;->getJavaScriptExecutorFactory()Lcom/facebook/react/bridge/JavaScriptExecutorFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getReloadAppAction(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ".RELOAD_APP_ACTION"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleCaptureHeap(Lcom/facebook/react/packagerconnection/Responder;)V
    .locals 3

    .line 881
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mCurrentContext:Lcom/facebook/react/bridge/ReactContext;

    if-nez v0, :cond_0

    return-void

    .line 884
    :cond_0
    const-class v1, Lcom/facebook/react/devsupport/JSCHeapCapture;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/devsupport/JSCHeapCapture;

    if-eqz v0, :cond_1

    .line 887
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    .line 888
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/facebook/react/devsupport/DevSupportManagerBase$7;

    invoke-direct {v2, p0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase$7;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;Lcom/facebook/react/packagerconnection/Responder;)V

    .line 887
    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/devsupport/JSCHeapCapture;->captureHeap(Ljava/lang/String;Lcom/facebook/react/devsupport/JSCHeapCapture$CaptureCallback;)V

    :cond_1
    return-void
.end method

.method private hideDevOptionsDialog()V
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 322
    iput-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevOptionsDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method private hideSplitBundleDevLoadingView()V
    .locals 1

    .line 839
    iget v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mPendingJSSplitBundleRequests:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mPendingJSSplitBundleRequests:I

    if-nez v0, :cond_0

    .line 840
    invoke-virtual {p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->hideDevLoadingView()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$fetchSplitBundleAndCreateBundleLoader$10(Ljava/lang/String;Ljava/io/File;Lcom/facebook/react/devsupport/DevSupportManagerBase$CallbackWithBundleLoader;)V
    .locals 2

    .line 793
    invoke-direct {p0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->showSplitBundleDevLoadingView(Ljava/lang/String;)V

    .line 794
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;

    new-instance v1, Lcom/facebook/react/devsupport/DevSupportManagerBase$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/facebook/react/devsupport/DevSupportManagerBase$6;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;Ljava/lang/String;Ljava/io/File;Lcom/facebook/react/devsupport/DevSupportManagerBase$CallbackWithBundleLoader;)V

    const/4 p3, 0x0

    invoke-virtual {v0, v1, p2, p1, p3}, Lcom/facebook/react/devsupport/DevServerHelper;->downloadBundleFromURL(Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;Ljava/io/File;Ljava/lang/String;Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;)V

    return-void
.end method

.method private synthetic lambda$isPackagerRunning$11(Lcom/facebook/react/devsupport/interfaces/PackagerStatusCallback;)V
    .locals 1

    .line 846
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/react/devsupport/DevServerHelper;->isPackagerRunning(Lcom/facebook/react/devsupport/interfaces/PackagerStatusCallback;)V

    return-void
.end method

.method private synthetic lambda$new$0()Landroid/content/Context;
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mReactInstanceDevHelper:Lcom/facebook/react/devsupport/ReactInstanceDevHelper;

    invoke-interface {v0}, Lcom/facebook/react/devsupport/ReactInstanceDevHelper;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 201
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private synthetic lambda$reportBundleLoadingFailure$12(Ljava/lang/Exception;)V
    .locals 2

    .line 963
    instance-of v0, p1, Lcom/facebook/react/common/DebugServerException;

    if-eqz v0, :cond_0

    .line 964
    move-object v0, p1

    check-cast v0, Lcom/facebook/react/common/DebugServerException;

    .line 965
    invoke-virtual {v0}, Lcom/facebook/react/common/DebugServerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->showNewJavaError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 967
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    sget v1, Lcom/facebook/react/R$string;->catalyst_reload_error:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->showNewJavaError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$setFpsDebugEnabled$15(Z)V
    .locals 1

    .line 1018
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevSettings:Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;

    invoke-interface {v0, p1}, Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;->setFpsDebugEnabled(Z)V

    return-void
.end method

.method private synthetic lambda$setHotModuleReplacementEnabled$13(Z)V
    .locals 1

    .line 992
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevSettings:Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;

    invoke-interface {v0, p1}, Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;->setHotModuleReplacementEnabled(Z)V

    .line 993
    invoke-virtual {p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->handleReloadJS()V

    return-void
.end method

.method private synthetic lambda$setRemoteJSDebugEnabled$14(Z)V
    .locals 1

    .line 1006
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevSettings:Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;

    invoke-interface {v0, p1}, Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;->setRemoteJSDebugEnabled(Z)V

    .line 1007
    invoke-virtual {p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->handleReloadJS()V

    return-void
.end method

.method private synthetic lambda$showDevOptionsDialog$3()V
    .locals 0

    .line 400
    invoke-virtual {p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->openDebugger()V

    return-void
.end method

.method private synthetic lambda$showDevOptionsDialog$4()V
    .locals 4

    .line 406
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mReactInstanceDevHelper:Lcom/facebook/react/devsupport/ReactInstanceDevHelper;

    invoke-interface {v0}, Lcom/facebook/react/devsupport/ReactInstanceDevHelper;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 407
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 414
    :cond_0
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 415
    const-string v2, "localhost:8081"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 417
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    sget v3, Lcom/facebook/react/R$string;->catalyst_change_bundle_location:I

    .line 419
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 420
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/facebook/react/devsupport/DevSupportManagerBase$3;

    invoke-direct {v2, p0, v1}, Lcom/facebook/react/devsupport/DevSupportManagerBase$3;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;Landroid/widget/EditText;)V

    const v1, 0x104000a

    .line 421
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 431
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 432
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    .line 408
    :cond_1
    :goto_0
    const-string v0, "ReactNative"

    const-string v1, "Unable to launch change bundle location because react activity is not available"

    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$showDevOptionsDialog$5()V
    .locals 3

    .line 450
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevSettings:Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;

    invoke-interface {v0}, Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;->isHotModuleReplacementEnabled()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    .line 451
    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevSettings:Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;

    invoke-interface {v2, v1}, Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;->setHotModuleReplacementEnabled(Z)V

    .line 452
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mCurrentContext:Lcom/facebook/react/bridge/ReactContext;

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    .line 454
    const-class v2, Lcom/facebook/react/devsupport/HMRClient;

    invoke-virtual {v1, v2}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/devsupport/HMRClient;

    invoke-interface {v1}, Lcom/facebook/react/devsupport/HMRClient;->enable()V

    goto :goto_0

    .line 456
    :cond_0
    const-class v2, Lcom/facebook/react/devsupport/HMRClient;

    invoke-virtual {v1, v2}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/devsupport/HMRClient;

    invoke-interface {v1}, Lcom/facebook/react/devsupport/HMRClient;->disable()V

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 459
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevSettings:Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;

    invoke-interface {v0}, Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;->isJSDevModeEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 460
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    sget v1, Lcom/facebook/react/R$string;->catalyst_hot_reloading_auto_enable:I

    .line 462
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 460
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 464
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 465
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevSettings:Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;

    invoke-interface {v0, v2}, Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;->setJSDevModeEnabled(Z)V

    .line 466
    invoke-virtual {p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->handleReloadJS()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$showDevOptionsDialog$6()V
    .locals 2

    .line 475
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevSettings:Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;

    invoke-interface {v0}, Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;->isFpsDebugEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 477
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mReactInstanceDevHelper:Lcom/facebook/react/devsupport/ReactInstanceDevHelper;

    invoke-interface {v0}, Lcom/facebook/react/devsupport/ReactInstanceDevHelper;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 479
    const-string v0, "ReactNative"

    const-string v1, "Unable to get reference to react activity"

    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 481
    :cond_0
    invoke-static {v0}, Lcom/facebook/react/devsupport/DebugOverlayController;->requestPermission(Landroid/content/Context;)V

    .line 484
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevSettings:Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;

    invoke-interface {v0}, Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;->isFpsDebugEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;->setFpsDebugEnabled(Z)V

    return-void
.end method

.method private synthetic lambda$showDevOptionsDialog$7()V
    .locals 3

    .line 489
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    const-class v2, Lcom/facebook/react/devsupport/DevSettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 490
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 491
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$showDevOptionsDialog$8([Lcom/facebook/react/devsupport/interfaces/DevOptionHandler;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 559
    aget-object p1, p1, p3

    invoke-interface {p1}, Lcom/facebook/react/devsupport/interfaces/DevOptionHandler;->onOptionSelected()V

    const/4 p1, 0x0

    .line 560
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevOptionsDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private synthetic lambda$showDevOptionsDialog$9(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 562
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevOptionsDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private synthetic lambda$showNewError$2(Ljava/lang/String;[Lcom/facebook/react/devsupport/interfaces/StackFrame;ILcom/facebook/react/devsupport/interfaces/ErrorType;)V
    .locals 0

    .line 334
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->updateLastErrorInfo(Ljava/lang/String;[Lcom/facebook/react/devsupport/interfaces/StackFrame;ILcom/facebook/react/devsupport/interfaces/ErrorType;)V

    .line 336
    iget-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mRedBoxSurfaceDelegate:Lcom/facebook/react/common/SurfaceDelegate;

    if-nez p1, :cond_1

    .line 337
    const-string p1, "RedBox"

    invoke-virtual {p0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->createSurfaceDelegate(Ljava/lang/String;)Lcom/facebook/react/common/SurfaceDelegate;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 339
    iput-object p2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mRedBoxSurfaceDelegate:Lcom/facebook/react/common/SurfaceDelegate;

    goto :goto_0

    .line 341
    :cond_0
    new-instance p2, Lcom/facebook/react/devsupport/RedBoxDialogSurfaceDelegate;

    invoke-direct {p2, p0}, Lcom/facebook/react/devsupport/RedBoxDialogSurfaceDelegate;-><init>(Lcom/facebook/react/devsupport/interfaces/DevSupportManager;)V

    iput-object p2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mRedBoxSurfaceDelegate:Lcom/facebook/react/common/SurfaceDelegate;

    .line 344
    :goto_0
    iget-object p2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mRedBoxSurfaceDelegate:Lcom/facebook/react/common/SurfaceDelegate;

    invoke-interface {p2, p1}, Lcom/facebook/react/common/SurfaceDelegate;->createContentView(Ljava/lang/String;)V

    .line 347
    :cond_1
    iget-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mRedBoxSurfaceDelegate:Lcom/facebook/react/common/SurfaceDelegate;

    invoke-interface {p1}, Lcom/facebook/react/common/SurfaceDelegate;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 353
    :cond_2
    iget-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mRedBoxSurfaceDelegate:Lcom/facebook/react/common/SurfaceDelegate;

    invoke-interface {p1}, Lcom/facebook/react/common/SurfaceDelegate;->show()V

    return-void
.end method

.method private synthetic lambda$toggleElementInspector$16()V
    .locals 2

    .line 1029
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevSettings:Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;

    invoke-interface {v0}, Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;->isElementInspectorEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;->setElementInspectorEnabled(Z)V

    .line 1030
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mReactInstanceDevHelper:Lcom/facebook/react/devsupport/ReactInstanceDevHelper;

    invoke-interface {v0}, Lcom/facebook/react/devsupport/ReactInstanceDevHelper;->toggleElementInspector()V

    return-void
.end method

.method private synthetic lambda$updateJSError$1(ILjava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mRedBoxSurfaceDelegate:Lcom/facebook/react/common/SurfaceDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/facebook/react/common/SurfaceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mLastErrorCookie:I

    if-eq p1, v0, :cond_2

    :cond_1
    return-void

    .line 297
    :cond_2
    invoke-static {p3}, Lcom/facebook/react/devsupport/StackTraceHelper;->convertJsStackTrace(Lcom/facebook/react/bridge/ReadableArray;)[Lcom/facebook/react/devsupport/interfaces/StackFrame;

    move-result-object p3

    sget-object v0, Lcom/facebook/react/devsupport/interfaces/ErrorType;->JS:Lcom/facebook/react/devsupport/interfaces/ErrorType;

    .line 296
    invoke-direct {p0, p2, p3, p1, v0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->updateLastErrorInfo(Ljava/lang/String;[Lcom/facebook/react/devsupport/interfaces/StackFrame;ILcom/facebook/react/devsupport/interfaces/ErrorType;)V

    .line 298
    iget-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mRedBoxSurfaceDelegate:Lcom/facebook/react/common/SurfaceDelegate;

    invoke-interface {p1}, Lcom/facebook/react/common/SurfaceDelegate;->show()V

    return-void
.end method

.method private logJSException(Ljava/lang/Exception;)V
    .locals 5

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception in native call from JS"

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_1

    .line 226
    const-string v3, "\n\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_1

    .line 230
    :cond_1
    instance-of v1, p1, Lcom/facebook/react/common/JavascriptException;

    if-eqz v1, :cond_2

    .line 231
    const-string v0, "ReactNative"

    invoke-static {v0, v2, p1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 233
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/facebook/react/devsupport/interfaces/StackFrame;

    const/4 v1, -0x1

    sget-object v2, Lcom/facebook/react/devsupport/interfaces/ErrorType;->JS:Lcom/facebook/react/devsupport/interfaces/ErrorType;

    .line 232
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->showNewError(Ljava/lang/String;[Lcom/facebook/react/devsupport/interfaces/StackFrame;ILcom/facebook/react/devsupport/interfaces/ErrorType;)V

    goto :goto_2

    .line 235
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->showNewJavaError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private reload()V
    .locals 4

    .line 1035
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 1038
    iget-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsDevSupportEnabled:Z

    if-eqz v0, :cond_4

    .line 1040
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDebugOverlayController:Lcom/facebook/react/devsupport/DebugOverlayController;

    if-eqz v0, :cond_0

    .line 1041
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevSettings:Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;

    invoke-interface {v1}, Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;->isFpsDebugEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/react/devsupport/DebugOverlayController;->setFpsDebugViewVisible(Z)V

    .line 1045
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsShakeDetectorStarted:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 1046
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mShakeDetector:Lcom/facebook/react/common/ShakeDetector;

    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    const-string v3, "sensor"

    .line 1047
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    .line 1046
    invoke-virtual {v0, v2}, Lcom/facebook/react/common/ShakeDetector;->start(Landroid/hardware/SensorManager;)V

    .line 1048
    iput-boolean v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsShakeDetectorStarted:Z

    .line 1052
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsReceiverRegistered:Z

    if-nez v0, :cond_2

    .line 1053
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1054
    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->getReloadAppAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1055
    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mReloadAppBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->compatRegisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Z)V

    .line 1056
    iput-boolean v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsReceiverRegistered:Z

    .line 1060
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevLoadingViewVisible:Z

    if-eqz v0, :cond_3

    .line 1061
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevLoadingViewManager:Lcom/facebook/react/devsupport/interfaces/DevLoadingViewManager;

    const-string v1, "Reloading..."

    invoke-interface {v0, v1}, Lcom/facebook/react/devsupport/interfaces/DevLoadingViewManager;->showMessage(Ljava/lang/String;)V

    .line 1064
    :cond_3
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;

    .line 1065
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/facebook/react/devsupport/DevSupportManagerBase$9;

    invoke-direct {v2, p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase$9;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V

    .line 1064
    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/devsupport/DevServerHelper;->openPackagerConnection(Ljava/lang/String;Lcom/facebook/react/devsupport/DevServerHelper$PackagerCommandListener;)V

    goto :goto_0

    .line 1103
    :cond_4
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDebugOverlayController:Lcom/facebook/react/devsupport/DebugOverlayController;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 1104
    invoke-virtual {v0, v1}, Lcom/facebook/react/devsupport/DebugOverlayController;->setFpsDebugViewVisible(Z)V

    .line 1108
    :cond_5
    iget-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsShakeDetectorStarted:Z

    if-eqz v0, :cond_6

    .line 1109
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mShakeDetector:Lcom/facebook/react/common/ShakeDetector;

    invoke-virtual {v0}, Lcom/facebook/react/common/ShakeDetector;->stop()V

    .line 1110
    iput-boolean v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsShakeDetectorStarted:Z

    .line 1114
    :cond_6
    iget-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsReceiverRegistered:Z

    if-eqz v0, :cond_7

    .line 1115
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mReloadAppBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1116
    iput-boolean v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsReceiverRegistered:Z

    .line 1120
    :cond_7
    invoke-virtual {p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->hideRedboxDialog()V

    .line 1123
    invoke-direct {p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->hideDevOptionsDialog()V

    .line 1126
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevLoadingViewManager:Lcom/facebook/react/devsupport/interfaces/DevLoadingViewManager;

    invoke-interface {v0}, Lcom/facebook/react/devsupport/interfaces/DevLoadingViewManager;->hide()V

    .line 1127
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;

    invoke-virtual {v0}, Lcom/facebook/react/devsupport/DevServerHelper;->closePackagerConnection()V

    :goto_0
    return-void
.end method

.method private reportBundleLoadingFailure(Ljava/lang/Exception;)V
    .locals 1

    .line 961
    new-instance v0, Lcom/facebook/react/devsupport/DevSupportManagerBase$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase$$ExternalSyntheticLambda11;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;Ljava/lang/Exception;)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private resetCurrentContext(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 9

    .line 679
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mCurrentContext:Lcom/facebook/react/bridge/ReactContext;

    if-ne v0, p1, :cond_0

    return-void

    .line 684
    :cond_0
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mCurrentContext:Lcom/facebook/react/bridge/ReactContext;

    .line 687
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDebugOverlayController:Lcom/facebook/react/devsupport/DebugOverlayController;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 688
    invoke-virtual {v0, v1}, Lcom/facebook/react/devsupport/DebugOverlayController;->setFpsDebugViewVisible(Z)V

    :cond_1
    if-eqz p1, :cond_2

    .line 691
    new-instance v0, Lcom/facebook/react/devsupport/DebugOverlayController;

    invoke-direct {v0, p1}, Lcom/facebook/react/devsupport/DebugOverlayController;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    iput-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDebugOverlayController:Lcom/facebook/react/devsupport/DebugOverlayController;

    .line 694
    :cond_2
    iget-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mCurrentContext:Lcom/facebook/react/bridge/ReactContext;

    if-eqz p1, :cond_4

    .line 696
    :try_start_0
    new-instance p1, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->getSourceUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 697
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 698
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    .line 699
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v8

    .line 700
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result p1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/net/URL;->getDefaultPort()I

    move-result p1

    :goto_0
    move v6, p1

    .line 701
    iget-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mCurrentContext:Lcom/facebook/react/bridge/ReactContext;

    const-class v0, Lcom/facebook/react/devsupport/HMRClient;

    .line 702
    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/facebook/react/devsupport/HMRClient;

    const-string v3, "android"

    iget-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevSettings:Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;

    .line 704
    invoke-interface {p1}, Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;->isHotModuleReplacementEnabled()Z

    move-result v7

    .line 703
    invoke-interface/range {v2 .. v8}, Lcom/facebook/react/devsupport/HMRClient;->setup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 706
    invoke-virtual {p1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->showNewJavaError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 710
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->reloadSettings()V

    return-void
.end method

.method private showDevLoadingViewForUrl(Ljava/lang/String;)V
    .locals 5

    .line 748
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 755
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 761
    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/net/URL;->getDefaultPort()I

    move-result p1

    .line 762
    :goto_0
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevLoadingViewManager:Lcom/facebook/react/devsupport/interfaces/DevLoadingViewManager;

    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    sget v3, Lcom/facebook/react/R$string;->catalyst_loading_from_url:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 764
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 763
    invoke-virtual {v2, v3, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 762
    invoke-interface {v1, p1}, Lcom/facebook/react/devsupport/interfaces/DevLoadingViewManager;->showMessage(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 765
    iput-boolean p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevLoadingViewVisible:Z

    return-void

    :catch_0
    move-exception p1

    .line 757
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bundle url format is invalid. \n\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ReactNative"

    invoke-static {v0, p1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showNewError(Ljava/lang/String;[Lcom/facebook/react/devsupport/interfaces/StackFrame;ILcom/facebook/react/devsupport/interfaces/ErrorType;)V
    .locals 7

    .line 331
    new-instance v6, Lcom/facebook/react/devsupport/DevSupportManagerBase$$ExternalSyntheticLambda13;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/react/devsupport/DevSupportManagerBase$$ExternalSyntheticLambda13;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;Ljava/lang/String;[Lcom/facebook/react/devsupport/interfaces/StackFrame;ILcom/facebook/react/devsupport/interfaces/ErrorType;)V

    invoke-static {v6}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private showSplitBundleDevLoadingView(Ljava/lang/String;)V
    .locals 0

    .line 833
    invoke-direct {p0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->showDevLoadingViewForUrl(Ljava/lang/String;)V

    .line 834
    iget p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mPendingJSSplitBundleRequests:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mPendingJSSplitBundleRequests:I

    return-void
.end method

.method private updateLastErrorInfo(Ljava/lang/String;[Lcom/facebook/react/devsupport/interfaces/StackFrame;ILcom/facebook/react/devsupport/interfaces/ErrorType;)V
    .locals 0

    .line 908
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mLastErrorTitle:Ljava/lang/String;

    .line 909
    iput-object p2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mLastErrorStack:[Lcom/facebook/react/devsupport/interfaces/StackFrame;

    .line 910
    iput p3, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mLastErrorCookie:I

    .line 911
    iput-object p4, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mLastErrorType:Lcom/facebook/react/devsupport/interfaces/ErrorType;

    return-void
.end method


# virtual methods
.method public addCustomDevOption(Ljava/lang/String;Lcom/facebook/react/devsupport/interfaces/DevOptionHandler;)V
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mCustomDevOptions:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public createRootView(Ljava/lang/String;)Landroid/view/View;
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mReactInstanceDevHelper:Lcom/facebook/react/devsupport/ReactInstanceDevHelper;

    invoke-interface {v0, p1}, Lcom/facebook/react/devsupport/ReactInstanceDevHelper;->createRootView(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public createSurfaceDelegate(Ljava/lang/String;)Lcom/facebook/react/common/SurfaceDelegate;
    .locals 1

    .line 1149
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mSurfaceDelegateFactory:Lcom/facebook/react/common/SurfaceDelegateFactory;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1153
    :cond_0
    invoke-interface {v0, p1}, Lcom/facebook/react/common/SurfaceDelegateFactory;->createSurfaceDelegate(Ljava/lang/String;)Lcom/facebook/react/common/SurfaceDelegate;

    move-result-object p1

    return-object p1
.end method

.method public destroyRootView(Landroid/view/View;)V
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mReactInstanceDevHelper:Lcom/facebook/react/devsupport/ReactInstanceDevHelper;

    invoke-interface {v0, p1}, Lcom/facebook/react/devsupport/ReactInstanceDevHelper;->destroyRootView(Landroid/view/View;)V

    return-void
.end method

.method public downloadBundleResourceFromUrlSync(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 1

    .line 857
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/devsupport/DevServerHelper;->downloadBundleResourceFromUrlSync(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public fetchSplitBundleAndCreateBundleLoader(Ljava/lang/String;Lcom/facebook/react/devsupport/DevSupportManagerBase$CallbackWithBundleLoader;)V
    .locals 6

    .line 787
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/react/devsupport/DevServerHelper;->getDevServerSplitBundleURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 789
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mJSSplitBundlesDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    const-string v5, "_"

    .line 790
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, ".jsbundle"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 791
    new-instance p1, Lcom/facebook/react/devsupport/DevSupportManagerBase$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/facebook/react/devsupport/DevSupportManagerBase$$ExternalSyntheticLambda0;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;Ljava/lang/String;Ljava/io/File;Lcom/facebook/react/devsupport/DevSupportManagerBase$CallbackWithBundleLoader;)V

    invoke-static {p1}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 731
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .line 1144
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mReactInstanceDevHelper:Lcom/facebook/react/devsupport/ReactInstanceDevHelper;

    invoke-interface {v0}, Lcom/facebook/react/devsupport/ReactInstanceDevHelper;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method protected getCurrentContext()Lcom/facebook/react/bridge/ReactContext;
    .locals 1

    .line 723
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mCurrentContext:Lcom/facebook/react/bridge/ReactContext;

    return-object v0
.end method

.method public getDevLoadingViewManager()Lcom/facebook/react/devsupport/interfaces/DevLoadingViewManager;
    .locals 1

    .line 739
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevLoadingViewManager:Lcom/facebook/react/devsupport/interfaces/DevLoadingViewManager;

    return-object v0
.end method

.method public getDevServerHelper()Lcom/facebook/react/devsupport/DevServerHelper;
    .locals 1

    .line 735
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;

    return-object v0
.end method

.method public getDevSettings()Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;
    .locals 1

    .line 596
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevSettings:Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;

    return-object v0
.end method

.method public getDevSupportEnabled()Z
    .locals 1

    .line 591
    iget-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsDevSupportEnabled:Z

    return v0
.end method

.method public getDownloadedJSBundleFile()Ljava/lang/String;
    .locals 1

    .line 644
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mJSBundleDownloadedFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJSAppBundleName()Ljava/lang/String;
    .locals 1

    .line 727
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mJSAppBundleName:Ljava/lang/String;

    return-object v0
.end method

.method public getJSBundleURLForRemoteDebugging()Ljava/lang/String;
    .locals 2

    .line 638
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;

    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mJSAppBundleName:Ljava/lang/String;

    .line 639
    invoke-static {v1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 638
    invoke-virtual {v0, v1}, Lcom/facebook/react/devsupport/DevServerHelper;->getJSBundleURLForRemoteDebugging(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastErrorCookie()I
    .locals 1

    .line 872
    iget v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mLastErrorCookie:I

    return v0
.end method

.method public getLastErrorStack()[Lcom/facebook/react/devsupport/interfaces/StackFrame;
    .locals 1

    .line 867
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mLastErrorStack:[Lcom/facebook/react/devsupport/interfaces/StackFrame;

    return-object v0
.end method

.method public getLastErrorTitle()Ljava/lang/String;
    .locals 1

    .line 862
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mLastErrorTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getLastErrorType()Lcom/facebook/react/devsupport/interfaces/ErrorType;
    .locals 1

    .line 877
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mLastErrorType:Lcom/facebook/react/devsupport/interfaces/ErrorType;

    return-object v0
.end method

.method public getReactInstanceDevHelper()Lcom/facebook/react/devsupport/ReactInstanceDevHelper;
    .locals 1

    .line 743
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mReactInstanceDevHelper:Lcom/facebook/react/devsupport/ReactInstanceDevHelper;

    return-object v0
.end method

.method public getRedBoxHandler()Lcom/facebook/react/devsupport/interfaces/RedBoxHandler;
    .locals 1

    .line 601
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mRedBoxHandler:Lcom/facebook/react/devsupport/interfaces/RedBoxHandler;

    return-object v0
.end method

.method public getSourceMapUrl()Ljava/lang/String;
    .locals 2

    .line 620
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mJSAppBundleName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 621
    const-string v0, ""

    return-object v0

    .line 624
    :cond_0
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/react/devsupport/DevServerHelper;->getSourceMapUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSourceUrl()Ljava/lang/String;
    .locals 2

    .line 629
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mJSAppBundleName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 630
    const-string v0, ""

    return-object v0

    .line 633
    :cond_0
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/react/devsupport/DevServerHelper;->getSourceUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getUniqueTag()Ljava/lang/String;
.end method

.method public handleException(Ljava/lang/Exception;)V
    .locals 1

    .line 213
    iget-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsDevSupportEnabled:Z

    if-eqz v0, :cond_0

    .line 214
    invoke-direct {p0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->logJSException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDefaultJSExceptionHandler:Lcom/facebook/react/bridge/DefaultJSExceptionHandler;

    invoke-virtual {v0, p1}, Lcom/facebook/react/bridge/DefaultJSExceptionHandler;->handleException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public hasUpToDateJSBundleInCache()Z
    .locals 8

    .line 654
    iget-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsDevSupportEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mJSBundleDownloadedFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 656
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 657
    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    .line 658
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 659
    iget-object v3, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mJSBundleDownloadedFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    iget-wide v5, v2, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v2, v3, v5

    if-lez v2, :cond_2

    .line 663
    new-instance v2, Ljava/io/File;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "/data/local/tmp/exopackage/%s//secondary-dex"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 664
    invoke-static {v3, v4, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 665
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 666
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mJSBundleDownloadedFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    move v1, v3

    :cond_0
    return v1

    :cond_1
    return v3

    .line 672
    :catch_0
    const-string v0, "ReactNative"

    const-string v2, "DevSupport is unable to get current app info"

    invoke-static {v0, v2}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v1
.end method

.method protected hideDevLoadingView()V
    .locals 1

    .line 781
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevLoadingViewManager:Lcom/facebook/react/devsupport/interfaces/DevLoadingViewManager;

    invoke-interface {v0}, Lcom/facebook/react/devsupport/interfaces/DevLoadingViewManager;->hide()V

    const/4 v0, 0x0

    .line 782
    iput-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevLoadingViewVisible:Z

    return-void
.end method

.method public hidePausedInDebuggerOverlay()V
    .locals 1

    .line 1188
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mPausedInDebuggerOverlayManager:Lcom/facebook/react/devsupport/interfaces/PausedInDebuggerOverlayManager;

    invoke-interface {v0}, Lcom/facebook/react/devsupport/interfaces/PausedInDebuggerOverlayManager;->hidePausedInDebuggerOverlay()V

    return-void
.end method

.method public hideRedboxDialog()V
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mRedBoxSurfaceDelegate:Lcom/facebook/react/common/SurfaceDelegate;

    if-nez v0, :cond_0

    return-void

    .line 308
    :cond_0
    invoke-interface {v0}, Lcom/facebook/react/common/SurfaceDelegate;->hide()V

    return-void
.end method

.method public isPackagerRunning(Lcom/facebook/react/devsupport/interfaces/PackagerStatusCallback;)V
    .locals 1

    .line 846
    new-instance v0, Lcom/facebook/react/devsupport/DevSupportManagerBase$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase$$ExternalSyntheticLambda8;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;Lcom/facebook/react/devsupport/interfaces/PackagerStatusCallback;)V

    .line 847
    iget-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mPackagerLocationCustomizer:Lcom/facebook/react/devsupport/interfaces/DevSupportManager$PackagerLocationCustomizer;

    if-eqz p1, :cond_0

    .line 848
    invoke-interface {p1, v0}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager$PackagerLocationCustomizer;->run(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 850
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public onNewReactContextCreated(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 0

    .line 606
    invoke-direct {p0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->resetCurrentContext(Lcom/facebook/react/bridge/ReactContext;)V

    return-void
.end method

.method public onReactInstanceDestroyed(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 1

    .line 611
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mCurrentContext:Lcom/facebook/react/bridge/ReactContext;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 614
    invoke-direct {p0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->resetCurrentContext(Lcom/facebook/react/bridge/ReactContext;)V

    :cond_0
    return-void
.end method

.method public openDebugger()V
    .locals 4

    .line 1176
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;

    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mCurrentContext:Lcom/facebook/react/bridge/ReactContext;

    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    sget v3, Lcom/facebook/react/R$string;->catalyst_open_debugger_error:I

    .line 1177
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1176
    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/devsupport/DevServerHelper;->openDebugger(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;)V

    return-void
.end method

.method public processErrorCustomizers(Landroid/util/Pair;)Landroid/util/Pair;
    .locals 2
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

    .line 271
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mErrorCustomizers:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 272
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/devsupport/interfaces/ErrorCustomizer;

    .line 273
    invoke-interface {v1, p1}, Lcom/facebook/react/devsupport/interfaces/ErrorCustomizer;->customizeErrorInfo(Landroid/util/Pair;)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object p1, v1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public registerErrorCustomizer(Lcom/facebook/react/devsupport/interfaces/ErrorCustomizer;)V
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mErrorCustomizers:Ljava/util/List;

    if-nez v0, :cond_0

    .line 264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mErrorCustomizers:Ljava/util/List;

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mErrorCustomizers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public reloadJSFromServer(Ljava/lang/String;Lcom/facebook/react/devsupport/interfaces/BundleLoadCallback;)V
    .locals 3

    .line 915
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->DOWNLOAD_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v0}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 917
    invoke-direct {p0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->showDevLoadingViewForUrl(Ljava/lang/String;)V

    .line 919
    new-instance v0, Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;

    invoke-direct {v0}, Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;-><init>()V

    .line 921
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;

    new-instance v2, Lcom/facebook/react/devsupport/DevSupportManagerBase$8;

    invoke-direct {v2, p0, v0, p2}, Lcom/facebook/react/devsupport/DevSupportManagerBase$8;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;Lcom/facebook/react/devsupport/interfaces/BundleLoadCallback;)V

    iget-object p2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mJSBundleDownloadedFile:Ljava/io/File;

    invoke-virtual {v1, v2, p2, p1, v0}, Lcom/facebook/react/devsupport/DevServerHelper;->downloadBundleFromURL(Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;Ljava/io/File;Ljava/lang/String;Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;)V

    return-void
.end method

.method public reloadSettings()V
    .locals 1

    .line 715
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->isOnUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 716
    invoke-direct {p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->reload()V

    goto :goto_0

    .line 718
    :cond_0
    new-instance v0, Lcom/facebook/react/devsupport/DevSupportManagerBase$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase$$ExternalSyntheticLambda12;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public setAdditionalOptionForPackager(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1193
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevSettings:Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;

    invoke-interface {v0}, Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;->getPackagerConnectionSettings()Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;->setAdditionalOptionForPackager(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDevSupportEnabled(Z)V
    .locals 0

    .line 585
    iput-boolean p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsDevSupportEnabled:Z

    .line 586
    invoke-virtual {p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->reloadSettings()V

    return-void
.end method

.method public setFpsDebugEnabled(Z)V
    .locals 1

    .line 1014
    iget-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsDevSupportEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 1018
    :cond_0
    new-instance v0, Lcom/facebook/react/devsupport/DevSupportManagerBase$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase$$ExternalSyntheticLambda4;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;Z)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setHotModuleReplacementEnabled(Z)V
    .locals 1

    .line 986
    iget-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsDevSupportEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 990
    :cond_0
    new-instance v0, Lcom/facebook/react/devsupport/DevSupportManagerBase$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase$$ExternalSyntheticLambda9;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;Z)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setPackagerLocationCustomizer(Lcom/facebook/react/devsupport/interfaces/DevSupportManager$PackagerLocationCustomizer;)V
    .locals 0

    .line 1139
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mPackagerLocationCustomizer:Lcom/facebook/react/devsupport/interfaces/DevSupportManager$PackagerLocationCustomizer;

    return-void
.end method

.method public setRemoteJSDebugEnabled(Z)V
    .locals 1

    .line 999
    iget-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsDevSupportEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 1003
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevSettings:Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;

    invoke-interface {v0}, Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;->isRemoteJSDebugEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 1004
    new-instance v0, Lcom/facebook/react/devsupport/DevSupportManagerBase$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase$$ExternalSyntheticLambda15;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;Z)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method protected showDevLoadingViewForRemoteJSEnabled()V
    .locals 3

    .line 770
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 774
    :cond_0
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevLoadingViewManager:Lcom/facebook/react/devsupport/interfaces/DevLoadingViewManager;

    sget v2, Lcom/facebook/react/R$string;->catalyst_debug_connecting:I

    .line 775
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 774
    invoke-interface {v1, v0}, Lcom/facebook/react/devsupport/interfaces/DevLoadingViewManager;->showMessage(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 776
    iput-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevLoadingViewVisible:Z

    return-void
.end method

.method public showDevOptionsDialog()V
    .locals 11

    .line 359
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevOptionsDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsDevSupportEnabled:Z

    if-eqz v0, :cond_c

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 362
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 363
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 365
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    sget v2, Lcom/facebook/react/R$string;->catalyst_reload:I

    .line 366
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/facebook/react/devsupport/DevSupportManagerBase$2;

    invoke-direct {v2, p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase$2;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V

    .line 365
    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevSettings:Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;

    invoke-interface {v1}, Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;->isRemoteJSDebugEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 387
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevSettings:Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;

    invoke-interface {v1, v2}, Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;->setRemoteJSDebugEnabled(Z)V

    .line 388
    invoke-virtual {p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->handleReloadJS()V

    .line 391
    :cond_1
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevSettings:Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;

    invoke-interface {v1}, Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;->isDeviceDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevSettings:Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;

    invoke-interface {v1}, Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;->isRemoteJSDebugEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    .line 393
    iget-boolean v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsPackagerConnected:Z

    .line 394
    iget-object v3, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 396
    sget v4, Lcom/facebook/react/R$string;->catalyst_debug_open:I

    goto :goto_0

    :cond_2
    sget v4, Lcom/facebook/react/R$string;->catalyst_debug_open_disabled:I

    .line 395
    :goto_0
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_3

    .line 398
    invoke-interface {v6, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 400
    :cond_3
    new-instance v1, Lcom/facebook/react/devsupport/DevSupportManagerBase$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase$$ExternalSyntheticLambda16;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V

    invoke-virtual {v0, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    :cond_4
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    sget v3, Lcom/facebook/react/R$string;->catalyst_change_bundle_location:I

    .line 404
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/facebook/react/devsupport/DevSupportManagerBase$$ExternalSyntheticLambda17;

    invoke-direct {v3, p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase$$ExternalSyntheticLambda17;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V

    .line 403
    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    sget v3, Lcom/facebook/react/R$string;->catalyst_inspector_toggle:I

    .line 436
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/facebook/react/devsupport/DevSupportManagerBase$4;

    invoke-direct {v3, p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase$4;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V

    .line 435
    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevSettings:Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;

    invoke-interface {v1}, Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;->isHotModuleReplacementEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 447
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    sget v3, Lcom/facebook/react/R$string;->catalyst_hot_reloading_stop:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 448
    :cond_5
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    sget v3, Lcom/facebook/react/R$string;->catalyst_hot_reloading:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    new-instance v3, Lcom/facebook/react/devsupport/DevSupportManagerBase$$ExternalSyntheticLambda18;

    invoke-direct {v3, p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase$$ExternalSyntheticLambda18;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V

    .line 445
    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevSettings:Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;

    invoke-interface {v1}, Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;->isFpsDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 472
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    sget v3, Lcom/facebook/react/R$string;->catalyst_perf_monitor_stop:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 473
    :cond_6
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    sget v3, Lcom/facebook/react/R$string;->catalyst_perf_monitor:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    new-instance v3, Lcom/facebook/react/devsupport/DevSupportManagerBase$$ExternalSyntheticLambda19;

    invoke-direct {v3, p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase$$ExternalSyntheticLambda19;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V

    .line 470
    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    sget v3, Lcom/facebook/react/R$string;->catalyst_settings:I

    .line 487
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/facebook/react/devsupport/DevSupportManagerBase$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase$$ExternalSyntheticLambda1;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V

    .line 486
    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mCustomDevOptions:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 495
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mCustomDevOptions:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 498
    :cond_7
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    new-array v3, v2, [Lcom/facebook/react/devsupport/interfaces/DevOptionHandler;

    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [Lcom/facebook/react/devsupport/interfaces/DevOptionHandler;

    .line 500
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mReactInstanceDevHelper:Lcom/facebook/react/devsupport/ReactInstanceDevHelper;

    invoke-interface {v1}, Lcom/facebook/react/devsupport/ReactInstanceDevHelper;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 501
    invoke-virtual {v8}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_8

    goto/16 :goto_3

    .line 508
    :cond_8
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 509
    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 511
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 512
    sget v4, Lcom/facebook/react/R$string;->catalyst_dev_menu_header:I

    invoke-virtual {p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->getUniqueTag()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v8, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0x32

    .line 513
    invoke-virtual {v3, v2, v4, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v4, 0x11

    .line 514
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v5, 0x41800000    # 16.0f

    .line 515
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 516
    invoke-virtual {v3}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v3, v5, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 517
    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 519
    invoke-direct {p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->getJSExecutorDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 522
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 523
    sget v5, Lcom/facebook/react/R$string;->catalyst_dev_menu_sub_header:I

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 524
    invoke-virtual {v8, v5, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 523
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x14

    .line 525
    invoke-virtual {v3, v2, v1, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 526
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v1, 0x41600000    # 14.0f

    .line 527
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 528
    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 531
    :cond_9
    new-instance v10, Lcom/facebook/react/devsupport/DevSupportManagerBase$5;

    .line 533
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, [Ljava/lang/String;

    const v4, 0x1090003

    move-object v1, v10

    move-object v2, p0

    move-object v3, v8

    invoke-direct/range {v1 .. v6}, Lcom/facebook/react/devsupport/DevSupportManagerBase$5;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;Landroid/content/Context;I[Ljava/lang/String;Ljava/util/Set;)V

    .line 553
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 555
    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/facebook/react/devsupport/DevSupportManagerBase$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v7}, Lcom/facebook/react/devsupport/DevSupportManagerBase$$ExternalSyntheticLambda2;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;[Lcom/facebook/react/devsupport/interfaces/DevOptionHandler;)V

    .line 556
    invoke-virtual {v0, v10, v1}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/facebook/react/devsupport/DevSupportManagerBase$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase$$ExternalSyntheticLambda3;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V

    .line 562
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 563
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevOptionsDialog:Landroid/app/AlertDialog;

    .line 564
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 565
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mCurrentContext:Lcom/facebook/react/bridge/ReactContext;

    if-eqz v0, :cond_a

    .line 566
    const-class v1, Lcom/facebook/react/modules/core/RCTNativeAppEventEmitter;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/RCTNativeAppEventEmitter;

    const-string v1, "RCTDevMenuShown"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/modules/core/RCTNativeAppEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a
    return-void

    .line 502
    :cond_b
    :goto_3
    const-string v0, "ReactNative"

    const-string v1, "Unable to launch dev options menu because react activity isn\'t available"

    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_4
    return-void
.end method

.method public showNewJSError(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;I)V
    .locals 1

    .line 258
    invoke-static {p2}, Lcom/facebook/react/devsupport/StackTraceHelper;->convertJsStackTrace(Lcom/facebook/react/bridge/ReadableArray;)[Lcom/facebook/react/devsupport/interfaces/StackFrame;

    move-result-object p2

    sget-object v0, Lcom/facebook/react/devsupport/interfaces/ErrorType;->JS:Lcom/facebook/react/devsupport/interfaces/ErrorType;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->showNewError(Ljava/lang/String;[Lcom/facebook/react/devsupport/interfaces/StackFrame;ILcom/facebook/react/devsupport/interfaces/ErrorType;)V

    return-void
.end method

.method public showNewJavaError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 241
    const-string v0, "ReactNative"

    const-string v1, "Exception in native call"

    invoke-static {v0, v1, p2}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 243
    invoke-static {p2}, Lcom/facebook/react/devsupport/StackTraceHelper;->convertJavaStackTrace(Ljava/lang/Throwable;)[Lcom/facebook/react/devsupport/interfaces/StackFrame;

    move-result-object p2

    const/4 v0, -0x1

    sget-object v1, Lcom/facebook/react/devsupport/interfaces/ErrorType;->NATIVE:Lcom/facebook/react/devsupport/interfaces/ErrorType;

    .line 242
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->showNewError(Ljava/lang/String;[Lcom/facebook/react/devsupport/interfaces/StackFrame;ILcom/facebook/react/devsupport/interfaces/ErrorType;)V

    return-void
.end method

.method public showPausedInDebuggerOverlay(Ljava/lang/String;Lcom/facebook/react/devsupport/interfaces/DevSupportManager$PausedInDebuggerOverlayCommandListener;)V
    .locals 1

    .line 1183
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mPausedInDebuggerOverlayManager:Lcom/facebook/react/devsupport/interfaces/PausedInDebuggerOverlayManager;

    invoke-interface {v0, p1, p2}, Lcom/facebook/react/devsupport/interfaces/PausedInDebuggerOverlayManager;->showPausedInDebuggerOverlay(Ljava/lang/String;Lcom/facebook/react/devsupport/interfaces/DevSupportManager$PausedInDebuggerOverlayCommandListener;)V

    return-void
.end method

.method public startInspector()V
    .locals 1

    .line 974
    iget-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsDevSupportEnabled:Z

    if-eqz v0, :cond_0

    .line 975
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;

    invoke-virtual {v0}, Lcom/facebook/react/devsupport/DevServerHelper;->openInspectorConnection()V

    :cond_0
    return-void
.end method

.method public stopInspector()V
    .locals 1

    .line 981
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;

    invoke-virtual {v0}, Lcom/facebook/react/devsupport/DevServerHelper;->closeInspectorConnection()V

    return-void
.end method

.method public toggleElementInspector()V
    .locals 1

    .line 1023
    iget-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsDevSupportEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 1027
    :cond_0
    new-instance v0, Lcom/facebook/react/devsupport/DevSupportManagerBase$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase$$ExternalSyntheticLambda10;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateJSError(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;I)V
    .locals 1

    .line 285
    new-instance v0, Lcom/facebook/react/devsupport/DevSupportManagerBase$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/facebook/react/devsupport/DevSupportManagerBase$$ExternalSyntheticLambda14;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;ILjava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)Z

    return-void
.end method
