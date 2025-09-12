.class public final Lcom/facebook/react/views/view/WindowUtilKt;
.super Ljava/lang/Object;
.source "WindowUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u0012\u0010\u0005\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0004\u001a\u000c\u0010\u0007\u001a\u00020\u0001*\u00020\u0002H\u0002\u001a\u000c\u0010\u0008\u001a\u00020\u0001*\u00020\u0002H\u0002\u00a8\u0006\t"
    }
    d2 = {
        "setStatusBarTranslucency",
        "",
        "Landroid/view/Window;",
        "isTranslucent",
        "",
        "setStatusBarVisibility",
        "isHidden",
        "statusBarHide",
        "statusBarShow",
        "ReactAndroid_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$t86E5IPR6Qb8R3LjStr06QLmcoE(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-static {p0, p1}, Lcom/facebook/react/views/view/WindowUtilKt;->setStatusBarTranslucency$lambda$0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public static final setStatusBarTranslucency(Landroid/view/Window;Z)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 20
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/facebook/react/views/view/WindowUtilKt$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/facebook/react/views/view/WindowUtilKt$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 31
    :goto_0
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    return-void
.end method

.method private static final setStatusBarTranslucency$lambda$0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    const-string/jumbo v0, "v"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0, p1}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    .line 23
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result p1

    .line 25
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v0

    .line 26
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    const/4 v2, 0x0

    .line 22
    invoke-virtual {p0, p1, v2, v0, v1}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public static final setStatusBarVisibility(Landroid/view/Window;Z)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 36
    invoke-static {p0}, Lcom/facebook/react/views/view/WindowUtilKt;->statusBarHide(Landroid/view/Window;)V

    goto :goto_0

    .line 38
    :cond_0
    invoke-static {p0}, Lcom/facebook/react/views/view/WindowUtilKt;->statusBarShow(Landroid/view/Window;)V

    :goto_0
    return-void
.end method

.method private static final statusBarHide(Landroid/view/Window;)V
    .locals 2

    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 46
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, v0}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    :cond_0
    const/16 v0, 0x400

    .line 50
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    const/16 v0, 0x800

    .line 51
    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method private static final statusBarShow(Landroid/view/Window;)V
    .locals 2

    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 57
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 v0, 0x1

    .line 59
    invoke-virtual {p0, v0}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    :cond_0
    const/16 v0, 0x800

    .line 61
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    const/16 v0, 0x400

    .line 62
    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method
