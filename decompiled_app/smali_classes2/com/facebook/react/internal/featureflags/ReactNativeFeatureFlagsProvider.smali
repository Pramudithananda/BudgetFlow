.class public interface abstract Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsProvider;
.super Ljava/lang/Object;
.source "ReactNativeFeatureFlagsProvider.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008/\u0008g\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\'J\u0008\u0010\u0004\u001a\u00020\u0003H\'J\u0008\u0010\u0005\u001a\u00020\u0003H\'J\u0008\u0010\u0006\u001a\u00020\u0003H\'J\u0008\u0010\u0007\u001a\u00020\u0003H\'J\u0008\u0010\u0008\u001a\u00020\u0003H\'J\u0008\u0010\t\u001a\u00020\u0003H\'J\u0008\u0010\n\u001a\u00020\u0003H\'J\u0008\u0010\u000b\u001a\u00020\u0003H\'J\u0008\u0010\u000c\u001a\u00020\u0003H\'J\u0008\u0010\r\u001a\u00020\u0003H\'J\u0008\u0010\u000e\u001a\u00020\u0003H\'J\u0008\u0010\u000f\u001a\u00020\u0003H\'J\u0008\u0010\u0010\u001a\u00020\u0003H\'J\u0008\u0010\u0011\u001a\u00020\u0003H\'J\u0008\u0010\u0012\u001a\u00020\u0003H\'J\u0008\u0010\u0013\u001a\u00020\u0003H\'J\u0008\u0010\u0014\u001a\u00020\u0003H\'J\u0008\u0010\u0015\u001a\u00020\u0003H\'J\u0008\u0010\u0016\u001a\u00020\u0003H\'J\u0008\u0010\u0017\u001a\u00020\u0003H\'J\u0008\u0010\u0018\u001a\u00020\u0003H\'J\u0008\u0010\u0019\u001a\u00020\u0003H\'J\u0008\u0010\u001a\u001a\u00020\u0003H\'J\u0008\u0010\u001b\u001a\u00020\u0003H\'J\u0008\u0010\u001c\u001a\u00020\u0003H\'J\u0008\u0010\u001d\u001a\u00020\u0003H\'J\u0008\u0010\u001e\u001a\u00020\u0003H\'J\u0008\u0010\u001f\u001a\u00020\u0003H\'J\u0008\u0010 \u001a\u00020\u0003H\'J\u0008\u0010!\u001a\u00020\u0003H\'J\u0008\u0010\"\u001a\u00020\u0003H\'J\u0008\u0010#\u001a\u00020\u0003H\'J\u0008\u0010$\u001a\u00020\u0003H\'J\u0008\u0010%\u001a\u00020\u0003H\'J\u0008\u0010&\u001a\u00020\u0003H\'J\u0008\u0010\'\u001a\u00020\u0003H\'J\u0008\u0010(\u001a\u00020\u0003H\'J\u0008\u0010)\u001a\u00020\u0003H\'J\u0008\u0010*\u001a\u00020\u0003H\'J\u0008\u0010+\u001a\u00020\u0003H\'J\u0008\u0010,\u001a\u00020\u0003H\'J\u0008\u0010-\u001a\u00020\u0003H\'J\u0008\u0010.\u001a\u00020\u0003H\'J\u0008\u0010/\u001a\u00020\u0003H\'J\u0008\u00100\u001a\u00020\u0003H\'J\u0008\u00101\u001a\u00020\u0003H\'\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u00062\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsProvider;",
        "",
        "batchRenderingUpdatesInEventLoop",
        "",
        "commonTestFlag",
        "completeReactInstanceCreationOnBgThreadOnAndroid",
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


# virtual methods
.method public abstract batchRenderingUpdatesInEventLoop()Z
.end method

.method public abstract commonTestFlag()Z
.end method

.method public abstract completeReactInstanceCreationOnBgThreadOnAndroid()Z
.end method

.method public abstract destroyFabricSurfacesInReactInstanceManager()Z
.end method

.method public abstract enableAlignItemsBaselineOnFabricIOS()Z
.end method

.method public abstract enableAndroidMixBlendModeProp()Z
.end method

.method public abstract enableBackgroundStyleApplicator()Z
.end method

.method public abstract enableCleanTextInputYogaNode()Z
.end method

.method public abstract enableEagerRootViewAttachment()Z
.end method

.method public abstract enableEventEmitterRetentionDuringGesturesOnAndroid()Z
.end method

.method public abstract enableFabricLogs()Z
.end method

.method public abstract enableFabricRendererExclusively()Z
.end method

.method public abstract enableGranularShadowTreeStateReconciliation()Z
.end method

.method public abstract enableIOSViewClipToPaddingBox()Z
.end method

.method public abstract enableLayoutAnimationsOnIOS()Z
.end method

.method public abstract enableLongTaskAPI()Z
.end method

.method public abstract enableMicrotasks()Z
.end method

.method public abstract enablePropsUpdateReconciliationAndroid()Z
.end method

.method public abstract enableReportEventPaintTime()Z
.end method

.method public abstract enableSynchronousStateUpdates()Z
.end method

.method public abstract enableUIConsistency()Z
.end method

.method public abstract enableViewRecycling()Z
.end method

.method public abstract excludeYogaFromRawProps()Z
.end method

.method public abstract fetchImagesInViewPreallocation()Z
.end method

.method public abstract fixIncorrectScrollViewStateUpdateOnAndroid()Z
.end method

.method public abstract fixMappingOfEventPrioritiesBetweenFabricAndReact()Z
.end method

.method public abstract fixMissedFabricStateUpdatesOnAndroid()Z
.end method

.method public abstract fixMountingCoordinatorReportedPendingTransactionsOnAndroid()Z
.end method

.method public abstract forceBatchingMountItemsOnAndroid()Z
.end method

.method public abstract fuseboxEnabledDebug()Z
.end method

.method public abstract fuseboxEnabledRelease()Z
.end method

.method public abstract initEagerTurboModulesOnNativeModulesQueueAndroid()Z
.end method

.method public abstract lazyAnimationCallbacks()Z
.end method

.method public abstract loadVectorDrawablesOnImages()Z
.end method

.method public abstract setAndroidLayoutDirection()Z
.end method

.method public abstract traceTurboModulePromiseRejectionsOnAndroid()Z
.end method

.method public abstract useFabricInterop()Z
.end method

.method public abstract useImmediateExecutorInAndroidBridgeless()Z
.end method

.method public abstract useModernRuntimeScheduler()Z
.end method

.method public abstract useNativeViewConfigsInBridgelessMode()Z
.end method

.method public abstract useNewReactImageViewBackgroundDrawing()Z
.end method

.method public abstract useOptimisedViewPreallocationOnAndroid()Z
.end method

.method public abstract useOptimizedEventBatchingOnAndroid()Z
.end method

.method public abstract useRuntimeShadowNodeReferenceUpdate()Z
.end method

.method public abstract useRuntimeShadowNodeReferenceUpdateOnLayout()Z
.end method

.method public abstract useStateAlignmentMechanism()Z
.end method

.method public abstract useTurboModuleInterop()Z
.end method
