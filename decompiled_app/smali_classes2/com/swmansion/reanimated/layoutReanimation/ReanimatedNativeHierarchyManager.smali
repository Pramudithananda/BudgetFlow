.class public Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;
.super Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManagerBase;
.source "ReanimatedNativeHierarchyManager.java"


# instance fields
.field private final cleanerCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private initOk:Z

.field private final mPendingDeletionsForTag:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mReaLayoutAnimator:Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;

.field private final mTabNavigatorObserver:Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver;

.field private final toBeRemoved:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/react/uimanager/ViewManagerRegistry;Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 5

    .line 31
    const-string v0, "accessFlags"

    invoke-direct {p0, p1}, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManagerBase;-><init>(Lcom/facebook/react/uimanager/ViewManagerRegistry;)V

    .line 22
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->toBeRemoved:Ljava/util/HashMap;

    .line 23
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->cleanerCallback:Ljava/util/HashMap;

    .line 25
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->mPendingDeletionsForTag:Ljava/util/HashMap;

    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->initOk:Z

    .line 33
    new-instance v1, Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;

    invoke-direct {v1, p2, p0}, Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/uimanager/NativeViewHierarchyManager;)V

    iput-object v1, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->mReaLayoutAnimator:Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;

    .line 34
    new-instance p2, Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver;

    invoke-direct {p2, v1}, Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver;-><init>(Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;)V

    iput-object p2, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->mTabNavigatorObserver:Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver;

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p2

    if-nez p2, :cond_0

    .line 38
    const-string p1, "reanimated"

    const-string p2, "unable to resolve NativeViewHierarchyManager class from ReanimatedNativeHierarchyManager"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 45
    :try_start_0
    const-string v2, "mLayoutAnimator"

    invoke-virtual {p2, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 46
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 51
    :try_start_1
    const-class v3, Ljava/lang/reflect/Field;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 52
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 54
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    and-int/lit8 v4, v4, -0x11

    .line 53
    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    .line 56
    :goto_0
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 59
    :goto_1
    iget-object v3, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->mReaLayoutAnimator:Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v2

    goto :goto_2

    :catch_3
    move-exception v2

    .line 61
    :goto_2
    iput-boolean v1, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->initOk:Z

    .line 62
    invoke-virtual {v2}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 66
    :goto_3
    :try_start_3
    const-string v2, "mPendingDeletionsForTag"

    invoke-virtual {p2, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    .line 67
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_6

    .line 72
    :try_start_4
    const-class v2, Ljava/lang/reflect/Field;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 75
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    and-int/lit8 v2, v2, -0x11

    .line 74
    invoke-virtual {v0, p2, v2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    .line 77
    :goto_4
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 80
    :goto_5
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->mPendingDeletionsForTag:Ljava/util/HashMap;

    invoke-virtual {p2, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_7

    :catch_6
    move-exception p2

    goto :goto_6

    :catch_7
    move-exception p2

    .line 82
    :goto_6
    iput-boolean v1, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->initOk:Z

    .line 83
    invoke-virtual {p2}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 86
    :goto_7
    iget-boolean p2, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->initOk:Z

    if-eqz p2, :cond_1

    .line 87
    invoke-virtual {p0, p1}, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->setLayoutAnimationEnabled(Z)V

    :cond_1
    return-void
.end method

.method private checkIfTopScreenHasHeader(Landroid/view/ViewGroup;)Z
    .locals 3

    const/4 v0, 0x0

    .line 131
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 132
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 133
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 134
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mIsHidden"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 135
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 136
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p1, v2

    return p1

    :catch_0
    return v0
.end method

.method private isLayoutAnimationDisabled()Z
    .locals 1

    .line 92
    iget-boolean v0, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->initOk:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->mReaLayoutAnimator:Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;

    invoke-virtual {v0}, Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;->isLayoutAnimationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static synthetic lambda$manageChildren$0(Ljava/util/ArrayList;Landroid/view/View;Lcom/facebook/react/uimanager/ViewGroupManager;Landroid/view/ViewGroup;)V
    .locals 0

    .line 217
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 218
    invoke-virtual {p2, p3, p1}, Lcom/facebook/react/uimanager/ViewGroupManager;->removeView(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected declared-synchronized dropView(Landroid/view/View;)V
    .locals 3

    monitor-enter p0

    .line 247
    :try_start_0
    invoke-direct {p0}, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->isLayoutAnimationDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    invoke-super {p0, p1}, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManagerBase;->dropView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    monitor-exit p0

    return-void

    .line 251
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->toBeRemoved:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->toBeRemoved:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->cleanerCallback:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 255
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->cleanerCallback:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 256
    iget-object v1, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->cleanerCallback:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 261
    :cond_2
    invoke-super {p0, p1}, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManagerBase;->dropView(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized manageChildren(I[I[Lcom/facebook/react/uimanager/ViewAtIndex;[I)V
    .locals 10

    monitor-enter p0

    .line 148
    :try_start_0
    invoke-direct {p0}, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->isLayoutAnimationDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-super {p0, p1, p2, p3, p4}, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManagerBase;->manageChildren(I[I[Lcom/facebook/react/uimanager/ViewAtIndex;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    monitor-exit p0

    return-void

    .line 155
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->resolveView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 156
    invoke-virtual {p0, p1}, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->resolveViewManager(I)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/uimanager/ViewGroupManager;
    :try_end_1
    .catch Lcom/facebook/react/uimanager/IllegalViewOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    :try_start_2
    iget-object v2, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->mReaLayoutAnimator:Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;

    invoke-virtual {v2}, Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;->getAnimationsManager()Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;

    move-result-object v2

    .line 166
    invoke-virtual {v1}, Lcom/facebook/react/uimanager/ViewGroupManager;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RNSScreenStack"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    if-nez p4, :cond_1

    .line 168
    invoke-virtual {v2, v0}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->makeSnapshotOfTopScreenViews(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 170
    :cond_1
    invoke-virtual {v2, p4}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->notifyAboutViewsRemoval([I)V

    :goto_0
    if-eqz p2, :cond_2

    .line 172
    iget-object v2, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->mReaLayoutAnimator:Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;

    instance-of v2, v2, Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;

    if-eqz v2, :cond_2

    .line 173
    array-length v2, p2

    :goto_1
    if-ge v4, v2, :cond_2

    aget v3, p2, v4

    .line 174
    invoke-virtual {v1, v0, v3}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildAt(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v3

    .line 175
    iget-object v5, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->mReaLayoutAnimator:Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;

    invoke-virtual {v5}, Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;->getAnimationsManager()Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->cancelAnimationsInSubviews(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 178
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManagerBase;->manageChildren(I[I[Lcom/facebook/react/uimanager/ViewAtIndex;[I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 179
    monitor-exit p0

    return-void

    .line 182
    :cond_3
    :try_start_3
    iget-object v3, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->toBeRemoved:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 183
    iget-object v3, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->toBeRemoved:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 184
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 185
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 186
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 188
    :cond_4
    :goto_3
    invoke-virtual {v1, v0}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildCount(Landroid/view/ViewGroup;)I

    move-result v3

    if-eqz v3, :cond_5

    .line 190
    invoke-virtual {v1, v0}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildCount(Landroid/view/ViewGroup;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v0, v3}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildAt(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v3

    .line 191
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 192
    invoke-virtual {v1, v0}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildCount(Landroid/view/ViewGroup;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v0, v3}, Lcom/facebook/react/uimanager/ViewGroupManager;->removeViewAt(Landroid/view/ViewGroup;I)V

    goto :goto_3

    :cond_5
    if-eqz p4, :cond_7

    .line 199
    iget-object v3, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->toBeRemoved:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 200
    iget-object v3, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->toBeRemoved:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :cond_6
    iget-object v3, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->toBeRemoved:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 203
    array-length v5, p4

    :goto_4
    if-ge v4, v5, :cond_7

    aget v6, p4, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 206
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->resolveView(I)Landroid/view/View;

    move-result-object v6
    :try_end_4
    .catch Lcom/facebook/react/uimanager/IllegalViewOperationException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 212
    :try_start_5
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v7, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->cleanerCallback:Ljava/util/HashMap;

    .line 215
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager$$ExternalSyntheticLambda0;

    invoke-direct {v9, v3, v6, v1, v0}, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/ArrayList;Landroid/view/View;Lcom/facebook/react/uimanager/ViewGroupManager;Landroid/view/ViewGroup;)V

    .line 214
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :catch_0
    move-exception v6

    .line 209
    invoke-virtual {v6}, Lcom/facebook/react/uimanager/IllegalViewOperationException;->printStackTrace()V

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 224
    :cond_7
    iget-object v3, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->mPendingDeletionsForTag:Ljava/util/HashMap;

    if-eqz v3, :cond_8

    .line 225
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    if-eqz v3, :cond_8

    .line 227
    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 230
    :cond_8
    invoke-virtual {v2, p4}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->notifyAboutViewsRemoval([I)V

    const/4 v2, 0x0

    .line 231
    invoke-super {p0, p1, p2, p3, v2}, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManagerBase;->manageChildren(I[I[Lcom/facebook/react/uimanager/ViewAtIndex;[I)V

    .line 232
    iget-object p2, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->toBeRemoved:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 233
    iget-object p2, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->toBeRemoved:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    .line 234
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    .line 235
    invoke-virtual {v1, v0}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildCount(Landroid/view/ViewGroup;)I

    move-result v3

    invoke-virtual {v1, v0, p3, v3}, Lcom/facebook/react/uimanager/ViewGroupManager;->addView(Landroid/view/ViewGroup;Landroid/view/View;I)V

    goto :goto_6

    .line 238
    :cond_9
    invoke-super {p0, p1, v2, v2, p4}, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManagerBase;->manageChildren(I[I[Lcom/facebook/react/uimanager/ViewAtIndex;[I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 239
    monitor-exit p0

    return-void

    :catch_1
    move-exception v0

    .line 159
    :try_start_6
    invoke-virtual {v0}, Lcom/facebook/react/uimanager/IllegalViewOperationException;->printStackTrace()V

    .line 160
    invoke-super {p0, p1, p2, p3, p4}, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManagerBase;->manageChildren(I[I[Lcom/facebook/react/uimanager/ViewAtIndex;[I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 161
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p1
.end method

.method public publicDropView(Landroid/view/View;)V
    .locals 0

    .line 242
    invoke-virtual {p0, p1}, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->dropView(Landroid/view/View;)V

    return-void
.end method

.method public declared-synchronized updateLayoutCommon(IIIIII)V
    .locals 0

    monitor-enter p0

    .line 98
    :try_start_0
    invoke-direct {p0}, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->isLayoutAnimationDisabled()Z

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_0

    .line 99
    monitor-exit p0

    return-void

    .line 102
    :cond_0
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->resolveViewManager(I)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object p3

    .line 103
    invoke-virtual {p3}, Lcom/facebook/react/uimanager/ViewManager;->getName()Ljava/lang/String;

    move-result-object p3

    .line 104
    invoke-virtual {p0, p1}, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->resolveView(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 105
    const-string p4, "RNSScreen"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->mReaLayoutAnimator:Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;

    if-eqz p3, :cond_3

    .line 106
    move-object p3, p1

    check-cast p3, Landroid/view/ViewGroup;

    invoke-direct {p0, p3}, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->checkIfTopScreenHasHeader(Landroid/view/ViewGroup;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 107
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result p3

    if-nez p3, :cond_2

    .line 108
    :cond_1
    iget-object p3, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->mReaLayoutAnimator:Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;

    invoke-virtual {p3}, Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;->getAnimationsManager()Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->screenDidLayout(Landroid/view/View;)V

    .line 110
    :cond_2
    invoke-virtual {p0, p2}, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->resolveView(I)Landroid/view/View;

    move-result-object p1

    .line 111
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    if-eqz p3, :cond_3

    .line 113
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    .line 114
    invoke-static {p3}, Lcom/swmansion/reanimated/layoutReanimation/ScreensHelper;->isScreenContainer(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 115
    iget-object p3, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->mTabNavigatorObserver:Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver;

    invoke-virtual {p3, p1}, Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver;->handleScreenContainerUpdate(Landroid/view/View;)V

    .line 119
    :cond_3
    invoke-virtual {p0, p2}, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->resolveView(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 120
    iget-object p2, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->mReaLayoutAnimator:Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;

    if-eqz p2, :cond_4

    .line 121
    invoke-virtual {p2}, Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;->getAnimationsManager()Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->viewDidLayout(Landroid/view/View;)V
    :try_end_1
    .catch Lcom/facebook/react/uimanager/IllegalViewOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 125
    :try_start_2
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/IllegalViewOperationException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 127
    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method
