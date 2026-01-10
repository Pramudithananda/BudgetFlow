.class Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver$FragmentLifecycleCallbacks;
.super Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;
.source "TabNavigatorObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FragmentLifecycleCallbacks"
.end annotation


# instance fields
.field private firstScreen:Landroid/view/View;

.field private getActivityState:Ljava/lang/reflect/Method;

.field private getScreen:Ljava/lang/reflect/Method;

.field private final nextTransition:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final screenTagsWithListener:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver;


# direct methods
.method public static synthetic $r8$lambda$L8-9xYPYwa23-igqXMKN-a4R5Kw(Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver$FragmentLifecycleCallbacks;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver$FragmentLifecycleCallbacks;->lambda$addScreenListener$0(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public constructor <init>(Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver;Landroidx/fragment/app/Fragment;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver$FragmentLifecycleCallbacks;->this$0:Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver;

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;-><init>()V

    .line 46
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver$FragmentLifecycleCallbacks;->screenTagsWithListener:Ljava/util/Set;

    .line 47
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver$FragmentLifecycleCallbacks;->nextTransition:Ljava/util/List;

    .line 50
    invoke-static {p2}, Lcom/swmansion/reanimated/layoutReanimation/ScreensHelper;->isScreenFragment(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 54
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 55
    const-string v0, "getScreen"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver$FragmentLifecycleCallbacks;->getScreen:Ljava/lang/reflect/Method;

    .line 56
    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 57
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string v0, "getActivityState"

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {p2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    iput-object p2, p0, Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver$FragmentLifecycleCallbacks;->getActivityState:Ljava/lang/reflect/Method;

    .line 58
    invoke-direct {p0, p1}, Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver$FragmentLifecycleCallbacks;->addScreenListener(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 61
    :goto_0
    invoke-virtual {p1}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string p1, "Unable to get screen activity state"

    .line 62
    :goto_1
    const-string p2, "[Reanimated]"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private addScreenListener(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver$FragmentLifecycleCallbacks;->screenTagsWithListener:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver$FragmentLifecycleCallbacks;->screenTagsWithListener:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v0, Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver$OnAttachStateChangeListener;

    iget-object v1, p0, Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver$FragmentLifecycleCallbacks;->this$0:Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver;

    invoke-direct {v0, v1}, Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver$OnAttachStateChangeListener;-><init>(Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 73
    new-instance v0, Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver$FragmentLifecycleCallbacks$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver$FragmentLifecycleCallbacks$$ExternalSyntheticLambda0;-><init>(Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver$FragmentLifecycleCallbacks;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private synthetic lambda$addScreenListener$0(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 75
    iget-object p1, p0, Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver$FragmentLifecycleCallbacks;->nextTransition:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 78
    :cond_0
    iget-object p1, p0, Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver$FragmentLifecycleCallbacks;->this$0:Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver;

    invoke-static {p1}, Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver;->-$$Nest$fgetmReaLayoutAnimator(Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver;)Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;->getAnimationsManager()Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;

    move-result-object p1

    .line 79
    iget-object p2, p0, Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver$FragmentLifecycleCallbacks;->nextTransition:Ljava/util/List;

    const/4 p3, 0x0

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    iget-object p3, p0, Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver$FragmentLifecycleCallbacks;->nextTransition:Ljava/util/List;

    const/4 p4, 0x1

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p2, p3}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->navigationTabChanged(Landroid/view/View;Landroid/view/View;)V

    .line 80
    iget-object p1, p0, Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver$FragmentLifecycleCallbacks;->nextTransition:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method private onFragmentUpdate(Landroidx/fragment/app/Fragment;Z)V
    .locals 3

    .line 94
    invoke-static {p1}, Lcom/swmansion/reanimated/layoutReanimation/ScreensHelper;->isScreenFragment(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 98
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver$FragmentLifecycleCallbacks;->getScreen:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 99
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver$FragmentLifecycleCallbacks;->getActivityState:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 102
    :cond_1
    invoke-direct {p0, p1}, Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver$FragmentLifecycleCallbacks;->addScreenListener(Landroid/view/View;)V

    .line 104
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver$FragmentLifecycleCallbacks;->firstScreen:Landroid/view/View;

    if-nez v0, :cond_2

    .line 105
    iput-object p1, p0, Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver$FragmentLifecycleCallbacks;->firstScreen:Landroid/view/View;

    return-void

    :cond_2
    if-eqz p2, :cond_3

    .line 110
    iget-object p2, p0, Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver$FragmentLifecycleCallbacks;->nextTransition:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object p2, p0, Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver$FragmentLifecycleCallbacks;->nextTransition:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 113
    :cond_3
    iget-object p2, p0, Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver$FragmentLifecycleCallbacks;->nextTransition:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object p1, p0, Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver$FragmentLifecycleCallbacks;->nextTransition:Ljava/util/List;

    iget-object p2, p0, Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver$FragmentLifecycleCallbacks;->firstScreen:Landroid/view/View;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    const/4 p1, 0x0

    .line 116
    iput-object p1, p0, Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver$FragmentLifecycleCallbacks;->firstScreen:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    .line 118
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    const-string p1, "Unable to get screen view"

    .line 119
    :goto_2
    const-string p2, "[Reanimated]"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method


# virtual methods
.method public onFragmentAttached(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/content/Context;)V
    .locals 0

    const/4 p1, 0x1

    .line 86
    invoke-direct {p0, p2, p1}, Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver$FragmentLifecycleCallbacks;->onFragmentUpdate(Landroidx/fragment/app/Fragment;Z)V

    return-void
.end method

.method public onFragmentDetached(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .locals 0

    const/4 p1, 0x0

    .line 90
    invoke-direct {p0, p2, p1}, Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver$FragmentLifecycleCallbacks;->onFragmentUpdate(Landroidx/fragment/app/Fragment;Z)V

    return-void
.end method
