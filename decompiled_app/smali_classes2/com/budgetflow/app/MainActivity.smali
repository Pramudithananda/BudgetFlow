.class public final Lcom/budgetflow/app/MainActivity;
.super Lcom/facebook/react/ReactActivity;
.source "MainActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0014J\u0008\u0010\u0005\u001a\u00020\u0006H\u0014J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0012\u0010\t\u001a\u00020\u00082\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0014\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/budgetflow/app/MainActivity;",
        "Lcom/facebook/react/ReactActivity;",
        "()V",
        "createReactActivityDelegate",
        "Lcom/facebook/react/ReactActivityDelegate;",
        "getMainComponentName",
        "",
        "invokeDefaultOnBackPressed",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/facebook/react/ReactActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected createReactActivityDelegate()Lcom/facebook/react/ReactActivityDelegate;
    .locals 5

    .line 33
    new-instance v0, Lexpo/modules/ReactActivityDelegateWrapper;

    .line 34
    move-object v1, p0

    check-cast v1, Lcom/facebook/react/ReactActivity;

    .line 38
    invoke-virtual {p0}, Lcom/budgetflow/app/MainActivity;->getMainComponentName()Ljava/lang/String;

    move-result-object v2

    .line 39
    invoke-static {}, Lcom/facebook/react/defaults/DefaultNewArchitectureEntryPoint;->getFabricEnabled()Z

    move-result v3

    .line 36
    new-instance v4, Lcom/budgetflow/app/MainActivity$createReactActivityDelegate$1;

    invoke-direct {v4, p0, v2, v3}, Lcom/budgetflow/app/MainActivity$createReactActivityDelegate$1;-><init>(Lcom/budgetflow/app/MainActivity;Ljava/lang/String;Z)V

    check-cast v4, Lcom/facebook/react/ReactActivityDelegate;

    const/4 v2, 0x1

    .line 33
    invoke-direct {v0, v1, v2, v4}, Lexpo/modules/ReactActivityDelegateWrapper;-><init>(Lcom/facebook/react/ReactActivity;ZLcom/facebook/react/ReactActivityDelegate;)V

    check-cast v0, Lcom/facebook/react/ReactActivityDelegate;

    return-object v0
.end method

.method protected getMainComponentName()Ljava/lang/String;
    .locals 1

    .line 26
    const-string v0, "main"

    return-object v0
.end method

.method public invokeDefaultOnBackPressed()V
    .locals 2

    .line 49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-gt v0, v1, :cond_1

    const/4 v0, 0x0

    .line 50
    invoke-virtual {p0, v0}, Lcom/budgetflow/app/MainActivity;->moveTaskToBack(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    invoke-super {p0}, Lcom/facebook/react/ReactActivity;->invokeDefaultOnBackPressed()V

    :cond_0
    return-void

    .line 59
    :cond_1
    invoke-super {p0}, Lcom/facebook/react/ReactActivity;->invokeDefaultOnBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 18
    sget p1, Lcom/budgetflow/app/R$style;->AppTheme:I

    invoke-virtual {p0, p1}, Lcom/budgetflow/app/MainActivity;->setTheme(I)V

    const/4 p1, 0x0

    .line 19
    invoke-super {p0, p1}, Lcom/facebook/react/ReactActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
