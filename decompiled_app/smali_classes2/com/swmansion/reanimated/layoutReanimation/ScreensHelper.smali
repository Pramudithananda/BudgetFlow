.class public Lcom/swmansion/reanimated/layoutReanimation/ScreensHelper;
.super Ljava/lang/Object;
.source "ScreensHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTabNavigator(Landroid/view/View;)Landroid/view/View;
    .locals 4

    :goto_0
    if-eqz p0, :cond_3

    .line 13
    invoke-static {p0}, Lcom/swmansion/reanimated/layoutReanimation/ScreensHelper;->isScreenContainer(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 16
    :cond_0
    invoke-static {p0}, Lcom/swmansion/reanimated/layoutReanimation/ScreensHelper;->isScreen(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-static {v0}, Lcom/swmansion/reanimated/layoutReanimation/ScreensHelper;->isScreensCoordinatorLayout(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 20
    :try_start_0
    const-string v1, "getContainer"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 21
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    .line 24
    :goto_1
    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_1
    const-string p0, "Unable to invoke the getContainer method"

    .line 25
    :goto_2
    const-string v0, "[Reanimated]"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 28
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_3

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_3
    :goto_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getTopScreenForStack(Landroid/view/View;)Landroid/view/View;
    .locals 4

    .line 52
    invoke-static {p0}, Lcom/swmansion/reanimated/layoutReanimation/ScreensHelper;->isScreenStack(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 56
    :try_start_0
    const-string v1, "getTopScreen"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 57
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    return-object p0
.end method

.method private static isInstanceOf(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 85
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isScreen(Ljava/lang/Object;)Z
    .locals 1

    .line 65
    const-string v0, "Screen"

    invoke-static {p0, v0}, Lcom/swmansion/reanimated/layoutReanimation/ScreensHelper;->isInstanceOf(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isScreenContainer(Ljava/lang/Object;)Z
    .locals 1

    .line 73
    const-string v0, "ScreenContainer"

    invoke-static {p0, v0}, Lcom/swmansion/reanimated/layoutReanimation/ScreensHelper;->isInstanceOf(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isScreenFragment(Ljava/lang/Object;)Z
    .locals 1

    .line 81
    const-string v0, "ScreenFragment"

    invoke-static {p0, v0}, Lcom/swmansion/reanimated/layoutReanimation/ScreensHelper;->isInstanceOf(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isScreenStack(Ljava/lang/Object;)Z
    .locals 1

    .line 69
    const-string v0, "ScreenStack"

    invoke-static {p0, v0}, Lcom/swmansion/reanimated/layoutReanimation/ScreensHelper;->isInstanceOf(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isScreensCoordinatorLayout(Ljava/lang/Object;)Z
    .locals 1

    .line 77
    const-string v0, "ScreensCoordinatorLayout"

    invoke-static {p0, v0}, Lcom/swmansion/reanimated/layoutReanimation/ScreensHelper;->isInstanceOf(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isViewChildOfScreen(Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 43
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-nez v1, :cond_1

    return v0

    .line 46
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_2
    return v0
.end method
