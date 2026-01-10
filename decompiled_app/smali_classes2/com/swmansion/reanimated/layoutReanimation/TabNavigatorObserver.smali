.class public Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver;
.super Ljava/lang/Object;
.source "TabNavigatorObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver$FragmentLifecycleCallbacks;,
        Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver$OnAttachStateChangeListener;
    }
.end annotation


# instance fields
.field private final mFragmentsWithListenerRegistry:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mReaLayoutAnimator:Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;


# direct methods
.method static bridge synthetic -$$Nest$fgetmReaLayoutAnimator(Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver;)Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;
    .locals 0

    iget-object p0, p0, Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver;->mReaLayoutAnimator:Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;

    return-object p0
.end method

.method public constructor <init>(Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver;->mFragmentsWithListenerRegistry:Ljava/util/Set;

    .line 21
    iput-object p1, p0, Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver;->mReaLayoutAnimator:Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;

    return-void
.end method


# virtual methods
.method public handleScreenContainerUpdate(Landroid/view/View;)V
    .locals 4

    .line 26
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 27
    const-string v1, "getFragment"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 28
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    .line 29
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getId()I

    move-result v0

    .line 30
    iget-object v1, p0, Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver;->mFragmentsWithListenerRegistry:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 31
    iget-object v1, p0, Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver;->mFragmentsWithListenerRegistry:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver$FragmentLifecycleCallbacks;

    invoke-direct {v1, p0, p1}, Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver$FragmentLifecycleCallbacks;-><init>(Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver;Landroidx/fragment/app/Fragment;)V

    const/4 p1, 0x1

    .line 34
    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentManager;->registerFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 37
    :goto_0
    invoke-virtual {p1}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    const-string p1, "Unable to get screen fragment"

    .line 38
    :goto_1
    const-string v0, "[Reanimated]"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    return-void
.end method
