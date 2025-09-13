.class public abstract Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;
.super Ljava/lang/Object;
.source "NativeProxyCommon.java"


# instance fields
.field private final ANIMATIONS_DRAG_FACTOR:I

.field protected cppVersion:Ljava/lang/String;

.field private firstUptime:Ljava/lang/Long;

.field private final gestureHandlerStateManager:Lcom/swmansion/common/GestureHandlerStateManager;

.field private final keyboardAnimationManager:Lcom/swmansion/reanimated/keyboard/KeyboardAnimationManager;

.field protected final mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ">;"
        }
    .end annotation
.end field

.field protected mNodesManager:Lcom/swmansion/reanimated/NodesManager;

.field protected final mWorkletsModule:Lcom/swmansion/worklets/WorkletsModule;

.field private final reanimatedSensorContainer:Lcom/swmansion/reanimated/sensor/ReanimatedSensorContainer;

.field private slowAnimationsEnabled:Z


# direct methods
.method public static synthetic $r8$lambda$hfOQ5sLHrsNvRCz3aHbdTOxw3RU(Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;)V
    .locals 0

    invoke-direct {p0}, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->toggleSlowAnimations()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-string v0, "reanimated"

    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z

    return-void
.end method

.method protected constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->firstUptime:Ljava/lang/Long;

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->slowAnimationsEnabled:Z

    const/16 v0, 0xa

    .line 51
    iput v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->ANIMATIONS_DRAG_FACTOR:I

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->cppVersion:Ljava/lang/String;

    .line 55
    const-class v1, Lcom/swmansion/reanimated/ReanimatedModule;

    .line 56
    invoke-virtual {p1, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v1

    check-cast v1, Lcom/swmansion/reanimated/ReanimatedModule;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/swmansion/reanimated/ReanimatedModule;

    invoke-virtual {v1}, Lcom/swmansion/reanimated/ReanimatedModule;->getWorkletsModule()Lcom/swmansion/worklets/WorkletsModule;

    move-result-object v1

    iput-object v1, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->mWorkletsModule:Lcom/swmansion/worklets/WorkletsModule;

    .line 57
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->mContext:Ljava/lang/ref/WeakReference;

    .line 58
    new-instance v2, Lcom/swmansion/reanimated/sensor/ReanimatedSensorContainer;

    invoke-direct {v2, v1}, Lcom/swmansion/reanimated/sensor/ReanimatedSensorContainer;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v2, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->reanimatedSensorContainer:Lcom/swmansion/reanimated/sensor/ReanimatedSensorContainer;

    .line 59
    new-instance v2, Lcom/swmansion/reanimated/keyboard/KeyboardAnimationManager;

    invoke-direct {v2, v1}, Lcom/swmansion/reanimated/keyboard/KeyboardAnimationManager;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v2, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->keyboardAnimationManager:Lcom/swmansion/reanimated/keyboard/KeyboardAnimationManager;

    .line 60
    invoke-direct {p0}, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->addDevMenuOption()V

    .line 64
    :try_start_0
    const-string v1, "com.swmansion.gesturehandler.react.RNGestureHandlerModule"

    .line 66
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 68
    invoke-virtual {p1, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object p1

    check-cast p1, Lcom/swmansion/common/GestureHandlerStateManager;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    .line 72
    :catch_0
    iput-object v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->gestureHandlerStateManager:Lcom/swmansion/common/GestureHandlerStateManager;

    return-void
.end method

.method private addDevMenuOption()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactApplicationContext;

    new-instance v1, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon$$ExternalSyntheticLambda0;-><init>(Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;)V

    invoke-static {v0, v1}, Lcom/swmansion/reanimated/DevMenuUtils;->addDevMenuOption(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/devsupport/interfaces/DevOptionHandler;)V

    return-void
.end method

.method private convertProps(Lcom/facebook/react/bridge/ReadableNativeArray;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReadableNativeArray;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 176
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 177
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReadableNativeArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v1, 0x0

    .line 178
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 179
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private toggleSlowAnimations()V
    .locals 3

    .line 78
    iget-boolean v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->slowAnimationsEnabled:Z

    xor-int/lit8 v1, v0, 0x1

    iput-boolean v1, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->slowAnimationsEnabled:Z

    if-nez v0, :cond_0

    .line 80
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->firstUptime:Ljava/lang/Long;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    iget-boolean v1, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->slowAnimationsEnabled:Z

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/swmansion/reanimated/NodesManager;->enableSlowAnimations(ZI)V

    return-void
.end method


# virtual methods
.method protected checkCppVersion()V
    .locals 4

    .line 109
    iget-object v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->cppVersion:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 114
    invoke-virtual {p0}, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->getReanimatedJavaVersion()Ljava/lang/String;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->cppVersion:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 116
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Reanimated] Mismatch between Java code version and C++ code version ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " vs. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->cppVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " respectively). See https://docs.swmansion.com/react-native-reanimated/docs/guides/troubleshooting#mismatch-between-java-code-version-and-c-code-version for more information."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 110
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "[Reanimated] Java side failed to resolve C++ code version. See https://docs.swmansion.com/react-native-reanimated/docs/guides/troubleshooting#java-side-failed-to-resolve-c-code-version for more information."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public configureProps(Lcom/facebook/react/bridge/ReadableNativeArray;Lcom/facebook/react/bridge/ReadableNativeArray;)V
    .locals 1

    .line 170
    invoke-direct {p0, p1}, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->convertProps(Lcom/facebook/react/bridge/ReadableNativeArray;)Ljava/util/Set;

    move-result-object p1

    .line 171
    invoke-direct {p0, p2}, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->convertProps(Lcom/facebook/react/bridge/ReadableNativeArray;)Ljava/util/Set;

    move-result-object p2

    .line 172
    iget-object v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    invoke-virtual {v0, p1, p2}, Lcom/swmansion/reanimated/NodesManager;->configureProps(Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method public dispatchCommand(ILjava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/swmansion/reanimated/NodesManager;->dispatchCommand(ILjava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public getAnimationTimestamp()J
    .locals 6

    .line 155
    iget-boolean v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->slowAnimationsEnabled:Z

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->firstUptime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 157
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->firstUptime:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xa

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0

    .line 159
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method protected abstract getHybridData()Lcom/facebook/jni/HybridData;
.end method

.method public getIsReducedMotion()Z
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 237
    const-string v1, "transition_animation_scale"

    .line 238
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 239
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public getReanimatedJavaVersion()Ljava/lang/String;
    .locals 1

    .line 97
    const-string v0, "3.17.5"

    return-object v0
.end method

.method protected native installJSIBindings()V
.end method

.method maybeFlushUIUpdatesQueue()V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    invoke-virtual {v0}, Lcom/swmansion/reanimated/NodesManager;->isAnimationRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    invoke-virtual {v0}, Lcom/swmansion/reanimated/NodesManager;->performOperations()V

    :cond_0
    return-void
.end method

.method public measure(I)[F
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    invoke-virtual {v0, p1}, Lcom/swmansion/reanimated/NodesManager;->measure(I)[F

    move-result-object p1

    return-object p1
.end method

.method public obtainProp(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    invoke-virtual {v0, p1, p2}, Lcom/swmansion/reanimated/NodesManager;->obtainProp(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public prepareLayoutAnimations(Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;)V
    .locals 2

    .line 218
    sget-boolean v0, Lcom/swmansion/reanimated/Utils;->isChromeDebugger:Z

    if-eqz v0, :cond_0

    .line 219
    const-string p1, "[REANIMATED]"

    const-string v0, "You can not use LayoutAnimation with enabled Chrome Debugger"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->mContext:Ljava/lang/ref/WeakReference;

    .line 223
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactApplicationContext;

    const-class v1, Lcom/swmansion/reanimated/ReanimatedModule;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    check-cast v0, Lcom/swmansion/reanimated/ReanimatedModule;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swmansion/reanimated/ReanimatedModule;

    .line 224
    invoke-virtual {v0}, Lcom/swmansion/reanimated/ReanimatedModule;->getNodesManager()Lcom/swmansion/reanimated/NodesManager;

    move-result-object v0

    iput-object v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    .line 226
    iget-object v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->mContext:Ljava/lang/ref/WeakReference;

    .line 227
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactApplicationContext;

    const-class v1, Lcom/swmansion/reanimated/ReanimatedModule;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    check-cast v0, Lcom/swmansion/reanimated/ReanimatedModule;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swmansion/reanimated/ReanimatedModule;

    .line 228
    invoke-virtual {v0}, Lcom/swmansion/reanimated/ReanimatedModule;->getNodesManager()Lcom/swmansion/reanimated/NodesManager;

    move-result-object v0

    .line 229
    invoke-virtual {v0}, Lcom/swmansion/reanimated/NodesManager;->getAnimationsManager()Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;

    move-result-object v0

    .line 231
    invoke-static {p1}, Lcom/swmansion/reanimated/NativeProxy;->createNativeMethodsHolder(Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;)Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->setNativeMethods(Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;)V

    return-void
.end method

.method public registerEventHandler(Lcom/swmansion/reanimated/nativeProxy/EventHandler;)V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    invoke-virtual {v0}, Lcom/swmansion/reanimated/NodesManager;->getEventNameResolver()Lcom/facebook/react/uimanager/UIManagerModule$CustomEventNamesResolver;

    move-result-object v0

    iput-object v0, p1, Lcom/swmansion/reanimated/nativeProxy/EventHandler;->mCustomEventNamesResolver:Lcom/facebook/react/uimanager/UIManagerModule$CustomEventNamesResolver;

    .line 187
    iget-object v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    invoke-virtual {v0, p1}, Lcom/swmansion/reanimated/NodesManager;->registerEventHandler(Lcom/facebook/react/uimanager/events/RCTEventEmitter;)V

    return-void
.end method

.method public registerSensor(IILcom/swmansion/reanimated/nativeProxy/SensorSetter;)I
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->reanimatedSensorContainer:Lcom/swmansion/reanimated/sensor/ReanimatedSensorContainer;

    .line 193
    invoke-static {p1}, Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;->getInstanceById(I)Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;

    move-result-object p1

    .line 192
    invoke-virtual {v0, p1, p2, p3}, Lcom/swmansion/reanimated/sensor/ReanimatedSensorContainer;->registerSensor(Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;ILcom/swmansion/reanimated/nativeProxy/SensorSetter;)I

    move-result p1

    return p1
.end method

.method public requestRender(Lcom/swmansion/reanimated/nativeProxy/AnimationFrameCallback;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    invoke-virtual {v0, p1}, Lcom/swmansion/reanimated/NodesManager;->postOnAnimation(Lcom/swmansion/reanimated/NodesManager$OnAnimationFrame;)V

    return-void
.end method

.method public scrollTo(IDDZ)V
    .locals 7

    .line 138
    iget-object v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/swmansion/reanimated/NodesManager;->scrollTo(IDDZ)V

    return-void
.end method

.method protected setCppVersion(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->cppVersion:Ljava/lang/String;

    return-void
.end method

.method public setGestureState(II)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->gestureHandlerStateManager:Lcom/swmansion/common/GestureHandlerStateManager;

    if-eqz v0, :cond_0

    .line 149
    invoke-interface {v0, p1, p2}, Lcom/swmansion/common/GestureHandlerStateManager;->setGestureHandlerState(II)V

    :cond_0
    return-void
.end method

.method public subscribeForKeyboardEvents(Lcom/swmansion/reanimated/keyboard/KeyboardWorkletWrapper;ZZ)I
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->keyboardAnimationManager:Lcom/swmansion/reanimated/keyboard/KeyboardAnimationManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/swmansion/reanimated/keyboard/KeyboardAnimationManager;->subscribeForKeyboardUpdates(Lcom/swmansion/reanimated/keyboard/KeyboardWorkletWrapper;ZZ)I

    move-result p1

    return p1
.end method

.method public unregisterSensor(I)V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->reanimatedSensorContainer:Lcom/swmansion/reanimated/sensor/ReanimatedSensorContainer;

    invoke-virtual {v0, p1}, Lcom/swmansion/reanimated/sensor/ReanimatedSensorContainer;->unregisterSensor(I)V

    return-void
.end method

.method public unsubscribeFromKeyboardEvents(I)V
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->keyboardAnimationManager:Lcom/swmansion/reanimated/keyboard/KeyboardAnimationManager;

    invoke-virtual {v0, p1}, Lcom/swmansion/reanimated/keyboard/KeyboardAnimationManager;->unsubscribeFromKeyboardUpdates(I)V

    return-void
.end method

.method public updateProps(ILjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    invoke-virtual {v0, p1, p2}, Lcom/swmansion/reanimated/NodesManager;->updateProps(ILjava/util/Map;)V

    return-void
.end method
