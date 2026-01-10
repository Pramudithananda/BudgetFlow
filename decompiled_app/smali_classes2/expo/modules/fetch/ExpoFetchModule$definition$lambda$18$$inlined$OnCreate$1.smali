.class public final Lexpo/modules/fetch/ExpoFetchModule$definition$lambda$18$$inlined$OnCreate$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ModuleDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/fetch/ExpoFetchModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModuleDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModuleDefinitionBuilder.kt\nexpo/modules/kotlin/modules/ModuleDefinitionBuilder$OnCreate$1\n+ 2 ExpoFetchModule.kt\nexpo/modules/fetch/ExpoFetchModule\n*L\n1#1,190:1\n47#2,2:191\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "expo/modules/kotlin/modules/ModuleDefinitionBuilder$OnCreate$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lexpo/modules/fetch/ExpoFetchModule;


# direct methods
.method public constructor <init>(Lexpo/modules/fetch/ExpoFetchModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/fetch/ExpoFetchModule$definition$lambda$18$$inlined$OnCreate$1;->this$0:Lexpo/modules/fetch/ExpoFetchModule;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 105
    invoke-virtual {p0}, Lexpo/modules/fetch/ExpoFetchModule$definition$lambda$18$$inlined$OnCreate$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 191
    iget-object v0, p0, Lexpo/modules/fetch/ExpoFetchModule$definition$lambda$18$$inlined$OnCreate$1;->this$0:Lexpo/modules/fetch/ExpoFetchModule;

    invoke-static {v0}, Lexpo/modules/fetch/ExpoFetchModule;->access$getCookieJarContainer(Lexpo/modules/fetch/ExpoFetchModule;)Lcom/facebook/react/modules/network/CookieJarContainer;

    move-result-object v0

    new-instance v1, Lokhttp3/JavaNetCookieJar;

    iget-object v2, p0, Lexpo/modules/fetch/ExpoFetchModule$definition$lambda$18$$inlined$OnCreate$1;->this$0:Lexpo/modules/fetch/ExpoFetchModule;

    invoke-static {v2}, Lexpo/modules/fetch/ExpoFetchModule;->access$getCookieHandler(Lexpo/modules/fetch/ExpoFetchModule;)Lcom/facebook/react/modules/network/ForwardingCookieHandler;

    move-result-object v2

    check-cast v2, Ljava/net/CookieHandler;

    invoke-direct {v1, v2}, Lokhttp3/JavaNetCookieJar;-><init>(Ljava/net/CookieHandler;)V

    check-cast v1, Lokhttp3/CookieJar;

    invoke-interface {v0, v1}, Lcom/facebook/react/modules/network/CookieJarContainer;->setCookieJar(Lokhttp3/CookieJar;)V

    return-void
.end method
