.class public final Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;
.super Ljava/lang/Object;
.source "ReactNativeFeatureFlagsCxxAccessor.kt"

# interfaces
.implements Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsAccessor;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u00083\n\u0002\u0010\u0002\n\u0002\u0008!\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u00104\u001a\u00020\u0004H\u0016J\u0008\u00105\u001a\u00020\u0004H\u0016J\u0008\u00106\u001a\u00020\u0004H\u0016J\u0008\u00107\u001a\u000208H\u0016J\u0008\u00109\u001a\u00020\u0004H\u0016J\u0008\u0010:\u001a\u00020\u0004H\u0016J\u0008\u0010;\u001a\u00020\u0004H\u0016J\u0008\u0010<\u001a\u00020\u0004H\u0016J\u0008\u0010=\u001a\u00020\u0004H\u0016J\u0008\u0010>\u001a\u00020\u0004H\u0016J\u0008\u0010?\u001a\u00020\u0004H\u0016J\u0008\u0010@\u001a\u00020\u0004H\u0016J\u0008\u0010A\u001a\u00020\u0004H\u0016J\u0008\u0010B\u001a\u00020\u0004H\u0016J\u0008\u0010C\u001a\u00020\u0004H\u0016J\u0008\u0010D\u001a\u00020\u0004H\u0016J\u0008\u0010E\u001a\u00020\u0004H\u0016J\u0008\u0010F\u001a\u00020\u0004H\u0016J\u0008\u0010G\u001a\u00020\u0004H\u0016J\u0008\u0010H\u001a\u00020\u0004H\u0016J\u0008\u0010I\u001a\u00020\u0004H\u0016J\u0008\u0010J\u001a\u00020\u0004H\u0016J\u0008\u0010K\u001a\u00020\u0004H\u0016J\u0008\u0010L\u001a\u00020\u0004H\u0016J\u0008\u0010M\u001a\u00020\u0004H\u0016J\u0008\u0010N\u001a\u00020\u0004H\u0016J\u0008\u0010O\u001a\u00020\u0004H\u0016J\u0008\u0010P\u001a\u00020\u0004H\u0016J\u0008\u0010Q\u001a\u00020\u0004H\u0016J\u0008\u0010R\u001a\u00020\u0004H\u0016J\u0008\u0010S\u001a\u00020\u0004H\u0016J\u0008\u0010T\u001a\u00020\u0004H\u0016J\u0008\u0010U\u001a\u00020\u0004H\u0016J\u0008\u0010V\u001a\u00020\u0004H\u0016J\u0008\u0010W\u001a\u00020\u0004H\u0016J\u0010\u0010X\u001a\u0002082\u0006\u0010Y\u001a\u00020ZH\u0016J\u0008\u0010[\u001a\u00020\u0004H\u0016J\u0008\u0010\\\u001a\u00020\u0004H\u0016J\u0008\u0010]\u001a\u00020\u0004H\u0016J\u0008\u0010^\u001a\u00020\u0004H\u0016J\u0008\u0010_\u001a\u00020\u0004H\u0016J\u0008\u0010`\u001a\u00020\u0004H\u0016J\u0008\u0010a\u001a\u00020\u0004H\u0016J\u0008\u0010b\u001a\u00020\u0004H\u0016J\u0008\u0010c\u001a\u00020\u0004H\u0016J\u0008\u0010d\u001a\u00020\u0004H\u0016J\u0008\u0010e\u001a\u00020\u0004H\u0016J\u0008\u0010f\u001a\u00020\u0004H\u0016J\u0008\u0010g\u001a\u00020\u0004H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u0012\u0010\u0008\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u0012\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u0012\u0010\n\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u0012\u0010\u000c\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u0012\u0010\r\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u0012\u0010\u0019\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u0012\u0010\u001b\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u0012\u0010\u001d\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u0012\u0010\u001e\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u0012\u0010\u001f\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u0012\u0010 \u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u0012\u0010!\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u0012\u0010\"\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u0012\u0010#\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u0012\u0010$\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u0012\u0010%\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u0012\u0010&\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u0012\u0010\'\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u0012\u0010(\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u0012\u0010)\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u0012\u0010*\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u0012\u0010+\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u0012\u0010,\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u0012\u0010-\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u0012\u0010.\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u0012\u0010/\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u0012\u00100\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u0012\u00101\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u0012\u00102\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u0012\u00103\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0005\u00a8\u0006h"
    }
    d2 = {
        "Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;",
        "Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsAccessor;",
        "()V",
        "batchRenderingUpdatesInEventLoopCache",
        "",
        "Ljava/lang/Boolean;",
        "commonTestFlagCache",
        "completeReactInstanceCreationOnBgThreadOnAndroidCache",
        "destroyFabricSurfacesInReactInstanceManagerCache",
        "enableAlignItemsBaselineOnFabricIOSCache",
        "enableAndroidMixBlendModePropCache",
        "enableBackgroundStyleApplicatorCache",
        "enableCleanTextInputYogaNodeCache",
        "enableEagerRootViewAttachmentCache",
        "enableEventEmitterRetentionDuringGesturesOnAndroidCache",
        "enableFabricLogsCache",
        "enableFabricRendererExclusivelyCache",
        "enableGranularShadowTreeStateReconciliationCache",
        "enableIOSViewClipToPaddingBoxCache",
        "enableLayoutAnimationsOnIOSCache",
        "enableLongTaskAPICache",
        "enableMicrotasksCache",
        "enablePropsUpdateReconciliationAndroidCache",
        "enableReportEventPaintTimeCache",
        "enableSynchronousStateUpdatesCache",
        "enableUIConsistencyCache",
        "enableViewRecyclingCache",
        "excludeYogaFromRawPropsCache",
        "fetchImagesInViewPreallocationCache",
        "fixIncorrectScrollViewStateUpdateOnAndroidCache",
        "fixMappingOfEventPrioritiesBetweenFabricAndReactCache",
        "fixMissedFabricStateUpdatesOnAndroidCache",
        "fixMountingCoordinatorReportedPendingTransactionsOnAndroidCache",
        "forceBatchingMountItemsOnAndroidCache",
        "fuseboxEnabledDebugCache",
        "fuseboxEnabledReleaseCache",
        "initEagerTurboModulesOnNativeModulesQueueAndroidCache",
        "lazyAnimationCallbacksCache",
        "loadVectorDrawablesOnImagesCache",
        "setAndroidLayoutDirectionCache",
        "traceTurboModulePromiseRejectionsOnAndroidCache",
        "useFabricInteropCache",
        "useImmediateExecutorInAndroidBridgelessCache",
        "useModernRuntimeSchedulerCache",
        "useNativeViewConfigsInBridgelessModeCache",
        "useNewReactImageViewBackgroundDrawingCache",
        "useOptimisedViewPreallocationOnAndroidCache",
        "useOptimizedEventBatchingOnAndroidCache",
        "useRuntimeShadowNodeReferenceUpdateCache",
        "useRuntimeShadowNodeReferenceUpdateOnLayoutCache",
        "useStateAlignmentMechanismCache",
        "useTurboModuleInteropCache",
        "batchRenderingUpdatesInEventLoop",
        "commonTestFlag",
        "completeReactInstanceCreationOnBgThreadOnAndroid",
        "dangerouslyReset",
        "",
        "destroyFabricSurfacesInReactInstanceManager",
        "enableAlignItemsBaselineOnFabricIOS",
        "enableAndroidMixBlendModeProp",
        "enableBackgroundStyleApplicator",
        "enableCleanTextInputYogaNode",
        "enableEagerRootViewAttachment",
        "enableEventEmitterRetentionDuringGesturesOnAndroid",
        "enableFabricLogs",
        "enableFabricRendererExclusively",
        "enableGranularShadowTreeStateReconciliation",
        "enableIOSViewClipToPaddingBox",
        "enableLayoutAnimationsOnIOS",
        "enableLongTaskAPI",
        "enableMicrotasks",
        "enablePropsUpdateReconciliationAndroid",
        "enableReportEventPaintTime",
        "enableSynchronousStateUpdates",
        "enableUIConsistency",
        "enableViewRecycling",
        "excludeYogaFromRawProps",
        "fetchImagesInViewPreallocation",
        "fixIncorrectScrollViewStateUpdateOnAndroid",
        "fixMappingOfEventPrioritiesBetweenFabricAndReact",
        "fixMissedFabricStateUpdatesOnAndroid",
        "fixMountingCoordinatorReportedPendingTransactionsOnAndroid",
        "forceBatchingMountItemsOnAndroid",
        "fuseboxEnabledDebug",
        "fuseboxEnabledRelease",
        "initEagerTurboModulesOnNativeModulesQueueAndroid",
        "lazyAnimationCallbacks",
        "loadVectorDrawablesOnImages",
        "override",
        "provider",
        "Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsProvider;",
        "setAndroidLayoutDirection",
        "traceTurboModulePromiseRejectionsOnAndroid",
        "useFabricInterop",
        "useImmediateExecutorInAndroidBridgeless",
        "useModernRuntimeScheduler",
        "useNativeViewConfigsInBridgelessMode",
        "useNewReactImageViewBackgroundDrawing",
        "useOptimisedViewPreallocationOnAndroid",
        "useOptimizedEventBatchingOnAndroid",
        "useRuntimeShadowNodeReferenceUpdate",
        "useRuntimeShadowNodeReferenceUpdateOnLayout",
        "useStateAlignmentMechanism",
        "useTurboModuleInterop",
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


# instance fields
.field private batchRenderingUpdatesInEventLoopCache:Ljava/lang/Boolean;

.field private commonTestFlagCache:Ljava/lang/Boolean;

.field private completeReactInstanceCreationOnBgThreadOnAndroidCache:Ljava/lang/Boolean;

.field private destroyFabricSurfacesInReactInstanceManagerCache:Ljava/lang/Boolean;

.field private enableAlignItemsBaselineOnFabricIOSCache:Ljava/lang/Boolean;

.field private enableAndroidMixBlendModePropCache:Ljava/lang/Boolean;

.field private enableBackgroundStyleApplicatorCache:Ljava/lang/Boolean;

.field private enableCleanTextInputYogaNodeCache:Ljava/lang/Boolean;

.field private enableEagerRootViewAttachmentCache:Ljava/lang/Boolean;

.field private enableEventEmitterRetentionDuringGesturesOnAndroidCache:Ljava/lang/Boolean;

.field private enableFabricLogsCache:Ljava/lang/Boolean;

.field private enableFabricRendererExclusivelyCache:Ljava/lang/Boolean;

.field private enableGranularShadowTreeStateReconciliationCache:Ljava/lang/Boolean;

.field private enableIOSViewClipToPaddingBoxCache:Ljava/lang/Boolean;

.field private enableLayoutAnimationsOnIOSCache:Ljava/lang/Boolean;

.field private enableLongTaskAPICache:Ljava/lang/Boolean;

.field private enableMicrotasksCache:Ljava/lang/Boolean;

.field private enablePropsUpdateReconciliationAndroidCache:Ljava/lang/Boolean;

.field private enableReportEventPaintTimeCache:Ljava/lang/Boolean;

.field private enableSynchronousStateUpdatesCache:Ljava/lang/Boolean;

.field private enableUIConsistencyCache:Ljava/lang/Boolean;

.field private enableViewRecyclingCache:Ljava/lang/Boolean;

.field private excludeYogaFromRawPropsCache:Ljava/lang/Boolean;

.field private fetchImagesInViewPreallocationCache:Ljava/lang/Boolean;

.field private fixIncorrectScrollViewStateUpdateOnAndroidCache:Ljava/lang/Boolean;

.field private fixMappingOfEventPrioritiesBetweenFabricAndReactCache:Ljava/lang/Boolean;

.field private fixMissedFabricStateUpdatesOnAndroidCache:Ljava/lang/Boolean;

.field private fixMountingCoordinatorReportedPendingTransactionsOnAndroidCache:Ljava/lang/Boolean;

.field private forceBatchingMountItemsOnAndroidCache:Ljava/lang/Boolean;

.field private fuseboxEnabledDebugCache:Ljava/lang/Boolean;

.field private fuseboxEnabledReleaseCache:Ljava/lang/Boolean;

.field private initEagerTurboModulesOnNativeModulesQueueAndroidCache:Ljava/lang/Boolean;

.field private lazyAnimationCallbacksCache:Ljava/lang/Boolean;

.field private loadVectorDrawablesOnImagesCache:Ljava/lang/Boolean;

.field private setAndroidLayoutDirectionCache:Ljava/lang/Boolean;

.field private traceTurboModulePromiseRejectionsOnAndroidCache:Ljava/lang/Boolean;

.field private useFabricInteropCache:Ljava/lang/Boolean;

.field private useImmediateExecutorInAndroidBridgelessCache:Ljava/lang/Boolean;

.field private useModernRuntimeSchedulerCache:Ljava/lang/Boolean;

.field private useNativeViewConfigsInBridgelessModeCache:Ljava/lang/Boolean;

.field private useNewReactImageViewBackgroundDrawingCache:Ljava/lang/Boolean;

.field private useOptimisedViewPreallocationOnAndroidCache:Ljava/lang/Boolean;

.field private useOptimizedEventBatchingOnAndroidCache:Ljava/lang/Boolean;

.field private useRuntimeShadowNodeReferenceUpdateCache:Ljava/lang/Boolean;

.field private useRuntimeShadowNodeReferenceUpdateOnLayoutCache:Ljava/lang/Boolean;

.field private useStateAlignmentMechanismCache:Ljava/lang/Boolean;

.field private useTurboModuleInteropCache:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public batchRenderingUpdatesInEventLoop()Z
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->batchRenderingUpdatesInEventLoopCache:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 83
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxInterop;->batchRenderingUpdatesInEventLoop()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 84
    iput-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->batchRenderingUpdatesInEventLoopCache:Ljava/lang/Boolean;

    .line 86
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public commonTestFlag()Z
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->commonTestFlagCache:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 74
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxInterop;->commonTestFlag()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 75
    iput-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->commonTestFlagCache:Ljava/lang/Boolean;

    .line 77
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public completeReactInstanceCreationOnBgThreadOnAndroid()Z
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->completeReactInstanceCreationOnBgThreadOnAndroidCache:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 92
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxInterop;->completeReactInstanceCreationOnBgThreadOnAndroid()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 93
    iput-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->completeReactInstanceCreationOnBgThreadOnAndroidCache:Ljava/lang/Boolean;

    .line 95
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public dangerouslyReset()V
    .locals 0

    .line 497
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxInterop;->dangerouslyReset()V

    return-void
.end method

.method public destroyFabricSurfacesInReactInstanceManager()Z
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->destroyFabricSurfacesInReactInstanceManagerCache:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 101
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxInterop;->destroyFabricSurfacesInReactInstanceManager()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 102
    iput-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->destroyFabricSurfacesInReactInstanceManagerCache:Ljava/lang/Boolean;

    .line 104
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public enableAlignItemsBaselineOnFabricIOS()Z
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->enableAlignItemsBaselineOnFabricIOSCache:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 110
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxInterop;->enableAlignItemsBaselineOnFabricIOS()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 111
    iput-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->enableAlignItemsBaselineOnFabricIOSCache:Ljava/lang/Boolean;

    .line 113
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public enableAndroidMixBlendModeProp()Z
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->enableAndroidMixBlendModePropCache:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 119
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxInterop;->enableAndroidMixBlendModeProp()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 120
    iput-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->enableAndroidMixBlendModePropCache:Ljava/lang/Boolean;

    .line 122
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public enableBackgroundStyleApplicator()Z
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->enableBackgroundStyleApplicatorCache:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 128
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxInterop;->enableBackgroundStyleApplicator()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 129
    iput-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->enableBackgroundStyleApplicatorCache:Ljava/lang/Boolean;

    .line 131
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public enableCleanTextInputYogaNode()Z
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->enableCleanTextInputYogaNodeCache:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 137
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxInterop;->enableCleanTextInputYogaNode()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 138
    iput-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->enableCleanTextInputYogaNodeCache:Ljava/lang/Boolean;

    .line 140
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public enableEagerRootViewAttachment()Z
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->enableEagerRootViewAttachmentCache:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 146
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxInterop;->enableEagerRootViewAttachment()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 147
    iput-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->enableEagerRootViewAttachmentCache:Ljava/lang/Boolean;

    .line 149
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public enableEventEmitterRetentionDuringGesturesOnAndroid()Z
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->enableEventEmitterRetentionDuringGesturesOnAndroidCache:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 155
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxInterop;->enableEventEmitterRetentionDuringGesturesOnAndroid()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 156
    iput-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->enableEventEmitterRetentionDuringGesturesOnAndroidCache:Ljava/lang/Boolean;

    .line 158
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public enableFabricLogs()Z
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->enableFabricLogsCache:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 164
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxInterop;->enableFabricLogs()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 165
    iput-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->enableFabricLogsCache:Ljava/lang/Boolean;

    .line 167
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public enableFabricRendererExclusively()Z
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->enableFabricRendererExclusivelyCache:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 173
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxInterop;->enableFabricRendererExclusively()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 174
    iput-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->enableFabricRendererExclusivelyCache:Ljava/lang/Boolean;

    .line 176
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public enableGranularShadowTreeStateReconciliation()Z
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->enableGranularShadowTreeStateReconciliationCache:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 182
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxInterop;->enableGranularShadowTreeStateReconciliation()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 183
    iput-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->enableGranularShadowTreeStateReconciliationCache:Ljava/lang/Boolean;

    .line 185
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public enableIOSViewClipToPaddingBox()Z
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->enableIOSViewClipToPaddingBoxCache:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 191
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxInterop;->enableIOSViewClipToPaddingBox()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 192
    iput-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->enableIOSViewClipToPaddingBoxCache:Ljava/lang/Boolean;

    .line 194
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public enableLayoutAnimationsOnIOS()Z
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->enableLayoutAnimationsOnIOSCache:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 200
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxInterop;->enableLayoutAnimationsOnIOS()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 201
    iput-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->enableLayoutAnimationsOnIOSCache:Ljava/lang/Boolean;

    .line 203
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public enableLongTaskAPI()Z
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->enableLongTaskAPICache:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 209
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxInterop;->enableLongTaskAPI()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 210
    iput-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->enableLongTaskAPICache:Ljava/lang/Boolean;

    .line 212
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public enableMicrotasks()Z
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->enableMicrotasksCache:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 218
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxInterop;->enableMicrotasks()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 219
    iput-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->enableMicrotasksCache:Ljava/lang/Boolean;

    .line 221
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public enablePropsUpdateReconciliationAndroid()Z
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->enablePropsUpdateReconciliationAndroidCache:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 227
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxInterop;->enablePropsUpdateReconciliationAndroid()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 228
    iput-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->enablePropsUpdateReconciliationAndroidCache:Ljava/lang/Boolean;

    .line 230
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public enableReportEventPaintTime()Z
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->enableReportEventPaintTimeCache:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 236
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxInterop;->enableReportEventPaintTime()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 237
    iput-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->enableReportEventPaintTimeCache:Ljava/lang/Boolean;

    .line 239
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public enableSynchronousStateUpdates()Z
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->enableSynchronousStateUpdatesCache:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 245
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxInterop;->enableSynchronousStateUpdates()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 246
    iput-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->enableSynchronousStateUpdatesCache:Ljava/lang/Boolean;

    .line 248
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public enableUIConsistency()Z
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->enableUIConsistencyCache:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 254
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxInterop;->enableUIConsistency()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 255
    iput-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->enableUIConsistencyCache:Ljava/lang/Boolean;

    .line 257
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public enableViewRecycling()Z
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->enableViewRecyclingCache:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 263
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxInterop;->enableViewRecycling()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 264
    iput-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->enableViewRecyclingCache:Ljava/lang/Boolean;

    .line 266
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public excludeYogaFromRawProps()Z
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->excludeYogaFromRawPropsCache:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 272
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxInterop;->excludeYogaFromRawProps()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 273
    iput-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->excludeYogaFromRawPropsCache:Ljava/lang/Boolean;

    .line 275
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public fetchImagesInViewPreallocation()Z
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->fetchImagesInViewPreallocationCache:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 281
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxInterop;->fetchImagesInViewPreallocation()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 282
    iput-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->fetchImagesInViewPreallocationCache:Ljava/lang/Boolean;

    .line 284
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public fixIncorrectScrollViewStateUpdateOnAndroid()Z
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->fixIncorrectScrollViewStateUpdateOnAndroidCache:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 290
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxInterop;->fixIncorrectScrollViewStateUpdateOnAndroid()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 291
    iput-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->fixIncorrectScrollViewStateUpdateOnAndroidCache:Ljava/lang/Boolean;

    .line 293
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public fixMappingOfEventPrioritiesBetweenFabricAndReact()Z
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->fixMappingOfEventPrioritiesBetweenFabricAndReactCache:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 299
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxInterop;->fixMappingOfEventPrioritiesBetweenFabricAndReact()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 300
    iput-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->fixMappingOfEventPrioritiesBetweenFabricAndReactCache:Ljava/lang/Boolean;

    .line 302
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public fixMissedFabricStateUpdatesOnAndroid()Z
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->fixMissedFabricStateUpdatesOnAndroidCache:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 308
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxInterop;->fixMissedFabricStateUpdatesOnAndroid()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 309
    iput-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->fixMissedFabricStateUpdatesOnAndroidCache:Ljava/lang/Boolean;

    .line 311
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public fixMountingCoordinatorReportedPendingTransactionsOnAndroid()Z
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->fixMountingCoordinatorReportedPendingTransactionsOnAndroidCache:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 317
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxInterop;->fixMountingCoordinatorReportedPendingTransactionsOnAndroid()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 318
    iput-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->fixMountingCoordinatorReportedPendingTransactionsOnAndroidCache:Ljava/lang/Boolean;

    .line 320
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public forceBatchingMountItemsOnAndroid()Z
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->forceBatchingMountItemsOnAndroidCache:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 326
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxInterop;->forceBatchingMountItemsOnAndroid()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 327
    iput-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->forceBatchingMountItemsOnAndroidCache:Ljava/lang/Boolean;

    .line 329
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public fuseboxEnabledDebug()Z
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->fuseboxEnabledDebugCache:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 335
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxInterop;->fuseboxEnabledDebug()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 336
    iput-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->fuseboxEnabledDebugCache:Ljava/lang/Boolean;

    .line 338
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public fuseboxEnabledRelease()Z
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->fuseboxEnabledReleaseCache:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 344
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxInterop;->fuseboxEnabledRelease()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 345
    iput-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->fuseboxEnabledReleaseCache:Ljava/lang/Boolean;

    .line 347
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public initEagerTurboModulesOnNativeModulesQueueAndroid()Z
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->initEagerTurboModulesOnNativeModulesQueueAndroidCache:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 353
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxInterop;->initEagerTurboModulesOnNativeModulesQueueAndroid()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 354
    iput-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->initEagerTurboModulesOnNativeModulesQueueAndroidCache:Ljava/lang/Boolean;

    .line 356
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public lazyAnimationCallbacks()Z
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->lazyAnimationCallbacksCache:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 362
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxInterop;->lazyAnimationCallbacks()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 363
    iput-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->lazyAnimationCallbacksCache:Ljava/lang/Boolean;

    .line 365
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public loadVectorDrawablesOnImages()Z
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->loadVectorDrawablesOnImagesCache:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 371
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxInterop;->loadVectorDrawablesOnImages()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 372
    iput-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->loadVectorDrawablesOnImagesCache:Ljava/lang/Boolean;

    .line 374
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public override(Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsProvider;)V
    .locals 1

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 495
    check-cast p1, Ljava/lang/Object;

    invoke-static {p1}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxInterop;->override(Ljava/lang/Object;)V

    return-void
.end method

.method public setAndroidLayoutDirection()Z
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->setAndroidLayoutDirectionCache:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 380
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxInterop;->setAndroidLayoutDirection()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 381
    iput-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->setAndroidLayoutDirectionCache:Ljava/lang/Boolean;

    .line 383
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public traceTurboModulePromiseRejectionsOnAndroid()Z
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->traceTurboModulePromiseRejectionsOnAndroidCache:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 389
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxInterop;->traceTurboModulePromiseRejectionsOnAndroid()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 390
    iput-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->traceTurboModulePromiseRejectionsOnAndroidCache:Ljava/lang/Boolean;

    .line 392
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public useFabricInterop()Z
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->useFabricInteropCache:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 398
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxInterop;->useFabricInterop()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 399
    iput-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->useFabricInteropCache:Ljava/lang/Boolean;

    .line 401
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public useImmediateExecutorInAndroidBridgeless()Z
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->useImmediateExecutorInAndroidBridgelessCache:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 407
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxInterop;->useImmediateExecutorInAndroidBridgeless()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 408
    iput-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->useImmediateExecutorInAndroidBridgelessCache:Ljava/lang/Boolean;

    .line 410
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public useModernRuntimeScheduler()Z
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->useModernRuntimeSchedulerCache:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 416
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxInterop;->useModernRuntimeScheduler()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 417
    iput-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->useModernRuntimeSchedulerCache:Ljava/lang/Boolean;

    .line 419
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public useNativeViewConfigsInBridgelessMode()Z
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->useNativeViewConfigsInBridgelessModeCache:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 425
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxInterop;->useNativeViewConfigsInBridgelessMode()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 426
    iput-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->useNativeViewConfigsInBridgelessModeCache:Ljava/lang/Boolean;

    .line 428
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public useNewReactImageViewBackgroundDrawing()Z
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->useNewReactImageViewBackgroundDrawingCache:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 434
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxInterop;->useNewReactImageViewBackgroundDrawing()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 435
    iput-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->useNewReactImageViewBackgroundDrawingCache:Ljava/lang/Boolean;

    .line 437
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public useOptimisedViewPreallocationOnAndroid()Z
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->useOptimisedViewPreallocationOnAndroidCache:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 443
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxInterop;->useOptimisedViewPreallocationOnAndroid()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 444
    iput-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->useOptimisedViewPreallocationOnAndroidCache:Ljava/lang/Boolean;

    .line 446
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public useOptimizedEventBatchingOnAndroid()Z
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->useOptimizedEventBatchingOnAndroidCache:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 452
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxInterop;->useOptimizedEventBatchingOnAndroid()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 453
    iput-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->useOptimizedEventBatchingOnAndroidCache:Ljava/lang/Boolean;

    .line 455
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public useRuntimeShadowNodeReferenceUpdate()Z
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->useRuntimeShadowNodeReferenceUpdateCache:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 461
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxInterop;->useRuntimeShadowNodeReferenceUpdate()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 462
    iput-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->useRuntimeShadowNodeReferenceUpdateCache:Ljava/lang/Boolean;

    .line 464
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public useRuntimeShadowNodeReferenceUpdateOnLayout()Z
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->useRuntimeShadowNodeReferenceUpdateOnLayoutCache:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 470
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxInterop;->useRuntimeShadowNodeReferenceUpdateOnLayout()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 471
    iput-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->useRuntimeShadowNodeReferenceUpdateOnLayoutCache:Ljava/lang/Boolean;

    .line 473
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public useStateAlignmentMechanism()Z
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->useStateAlignmentMechanismCache:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 479
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxInterop;->useStateAlignmentMechanism()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 480
    iput-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->useStateAlignmentMechanismCache:Ljava/lang/Boolean;

    .line 482
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public useTurboModuleInterop()Z
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->useTurboModuleInteropCache:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 488
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxInterop;->useTurboModuleInterop()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 489
    iput-object v0, p0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsCxxAccessor;->useTurboModuleInteropCache:Ljava/lang/Boolean;

    .line 491
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
