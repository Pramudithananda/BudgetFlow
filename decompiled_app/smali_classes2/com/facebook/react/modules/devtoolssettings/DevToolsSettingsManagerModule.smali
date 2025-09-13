.class public final Lcom/facebook/react/modules/devtoolssettings/DevToolsSettingsManagerModule;
.super Lcom/facebook/fbreact/specs/NativeDevToolsSettingsManagerSpec;
.source "DevToolsSettingsManagerModule.kt"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "DevToolsSettingsManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/modules/devtoolssettings/DevToolsSettingsManagerModule$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\n\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016J\n\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016J\u0012\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0008H\u0016J\u0012\u0010\r\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0008H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/facebook/react/modules/devtoolssettings/DevToolsSettingsManagerModule;",
        "Lcom/facebook/fbreact/specs/NativeDevToolsSettingsManagerSpec;",
        "reactContext",
        "Lcom/facebook/react/bridge/ReactApplicationContext;",
        "(Lcom/facebook/react/bridge/ReactApplicationContext;)V",
        "sharedPreferences",
        "Landroid/content/SharedPreferences;",
        "getConsolePatchSettings",
        "",
        "getProfilingSettings",
        "setConsolePatchSettings",
        "",
        "newSettings",
        "setProfilingSettings",
        "Companion",
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


# static fields
.field private static final Companion:Lcom/facebook/react/modules/devtoolssettings/DevToolsSettingsManagerModule$Companion;

.field private static final KEY_CONSOLE_PATCH_SETTINGS:Ljava/lang/String; = "ConsolePatchSettings"

.field private static final KEY_PROFILING_SETTINGS:Ljava/lang/String; = "ProfilingSettings"

.field private static final SHARED_PREFERENCES_PREFIX:Ljava/lang/String; = "ReactNative__DevToolsSettings"


# instance fields
.field private final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/react/modules/devtoolssettings/DevToolsSettingsManagerModule$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/react/modules/devtoolssettings/DevToolsSettingsManagerModule$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/react/modules/devtoolssettings/DevToolsSettingsManagerModule;->Companion:Lcom/facebook/react/modules/devtoolssettings/DevToolsSettingsManagerModule$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 2

    const-string v0, "reactContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p1}, Lcom/facebook/fbreact/specs/NativeDevToolsSettingsManagerSpec;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 21
    const-string v0, "ReactNative__DevToolsSettings"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "getSharedPreferences(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/facebook/react/modules/devtoolssettings/DevToolsSettingsManagerModule;->sharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public getConsolePatchSettings()Ljava/lang/String;
    .locals 3

    .line 24
    iget-object v0, p0, Lcom/facebook/react/modules/devtoolssettings/DevToolsSettingsManagerModule;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "ConsolePatchSettings"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProfilingSettings()Ljava/lang/String;
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/facebook/react/modules/devtoolssettings/DevToolsSettingsManagerModule;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "ProfilingSettings"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setConsolePatchSettings(Ljava/lang/String;)V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/facebook/react/modules/devtoolssettings/DevToolsSettingsManagerModule;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ConsolePatchSettings"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setProfilingSettings(Ljava/lang/String;)V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/facebook/react/modules/devtoolssettings/DevToolsSettingsManagerModule;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ProfilingSettings"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
