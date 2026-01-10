.class public final Lcom/facebook/react/devsupport/LogBoxDialog;
.super Landroid/app/Dialog;
.source "LogBoxDialog.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0012\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0014R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/facebook/react/devsupport/LogBoxDialog;",
        "Landroid/app/Dialog;",
        "context",
        "Landroid/app/Activity;",
        "reactRootView",
        "Landroid/view/View;",
        "(Landroid/app/Activity;Landroid/view/View;)V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
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
.field private final reactRootView:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$YNKCyC9-QTRydZVM6nScwM25Hk4(Lkotlin/jvm/functions/Function2;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/facebook/react/devsupport/LogBoxDialog;->onCreate$lambda$1$lambda$0(Lkotlin/jvm/functions/Function2;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    check-cast p1, Landroid/content/Context;

    sget v0, Lcom/facebook/react/R$style;->Theme_Catalyst_LogBox:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 23
    iput-object p2, p0, Lcom/facebook/react/devsupport/LogBoxDialog;->reactRootView:Landroid/view/View;

    const/4 p1, 0x1

    .line 26
    invoke-virtual {p0, p1}, Lcom/facebook/react/devsupport/LogBoxDialog;->requestWindowFeature(I)Z

    if-eqz p2, :cond_0

    .line 28
    invoke-virtual {p0, p2}, Lcom/facebook/react/devsupport/LogBoxDialog;->setContentView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private static final onCreate$lambda$1$lambda$0(Lkotlin/jvm/functions/Function2;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/core/view/WindowInsetsCompat;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 33
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcom/facebook/react/devsupport/LogBoxDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x1000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 37
    :cond_0
    iget-object p1, p0, Lcom/facebook/react/devsupport/LogBoxDialog;->reactRootView:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 39
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->displayCutout()I

    move-result v1

    or-int/2addr v0, v1

    .line 41
    new-instance v1, Lcom/facebook/react/devsupport/LogBoxDialog$onCreate$1$windowInsetsListener$1;

    invoke-direct {v1, v0}, Lcom/facebook/react/devsupport/LogBoxDialog$onCreate$1$windowInsetsListener$1;-><init>(I)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 50
    new-instance v0, Lcom/facebook/react/devsupport/LogBoxDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1}, Lcom/facebook/react/devsupport/LogBoxDialog$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    :cond_1
    return-void
.end method
