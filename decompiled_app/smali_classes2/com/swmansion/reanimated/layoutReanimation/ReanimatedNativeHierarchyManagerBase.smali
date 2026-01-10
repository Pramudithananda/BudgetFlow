.class public abstract Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManagerBase;
.super Lcom/facebook/react/uimanager/NativeViewHierarchyManager;
.source "ReanimatedNativeHierarchyManagerBase.java"


# direct methods
.method public constructor <init>(Lcom/facebook/react/uimanager/ViewManagerRegistry;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;-><init>(Lcom/facebook/react/uimanager/ViewManagerRegistry;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized updateLayout(IIIIIILcom/facebook/yoga/YogaDirection;)V
    .locals 0

    monitor-enter p0

    .line 15
    :try_start_0
    invoke-super/range {p0 .. p7}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->updateLayout(IIIIIILcom/facebook/yoga/YogaDirection;)V

    .line 16
    invoke-virtual/range {p0 .. p6}, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManagerBase;->updateLayoutCommon(IIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public abstract updateLayoutCommon(IIIIII)V
.end method
