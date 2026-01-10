.class public final Lexpo/modules/fetch/ExpoFetchModule$definition$lambda$18$lambda$17$$inlined$AsyncFunctionWithPromise$5;
.super Lkotlin/jvm/internal/Lambda;
.source "ObjectDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


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
        "Lkotlin/jvm/functions/Function2<",
        "[",
        "Ljava/lang/Object;",
        "Lexpo/modules/kotlin/Promise;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$22\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 ExpoFetchModule.kt\nexpo/modules/fetch/ExpoFetchModule\n*L\n1#1,579:1\n29#2,4:580\n125#3,14:584\n*S KotlinDebug\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$22\n*L\n341#1:580,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001\"\u0006\u0008\u0001\u0010\u0003\u0018\u0001\"\u0006\u0008\u0002\u0010\u0004\u0018\u0001\"\u0006\u0008\u0003\u0010\u0005\u0018\u0001\"\u0006\u0008\u0004\u0010\u0006\u0018\u00012\u0010\u0010\u0007\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\t0\u00082\u0006\u0010\n\u001a\u00020\u000bH\n\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "<anonymous>",
        "",
        "R",
        "P0",
        "P1",
        "P2",
        "P3",
        "<name for destructuring parameter 0>",
        "",
        "",
        "promise",
        "Lexpo/modules/kotlin/Promise;",
        "invoke",
        "([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V",
        "expo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$22"
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

    iput-object p1, p0, Lexpo/modules/fetch/ExpoFetchModule$definition$lambda$18$lambda$17$$inlined$AsyncFunctionWithPromise$5;->this$0:Lexpo/modules/fetch/ExpoFetchModule;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 343
    check-cast p1, [Ljava/lang/Object;

    check-cast p2, Lexpo/modules/kotlin/Promise;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/fetch/ExpoFetchModule$definition$lambda$18$lambda$17$$inlined$AsyncFunctionWithPromise$5;->invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V
    .locals 7

    const-string v0, "<name for destructuring parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promise"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 340
    aget-object v1, p1, v0

    const/4 v2, 0x1

    aget-object v3, p1, v2

    const/4 v4, 0x2

    aget-object v5, p1, v4

    const/4 v6, 0x3

    aget-object p1, p1, v6

    .line 342
    check-cast p1, [B

    check-cast v5, Lexpo/modules/fetch/NativeRequestInit;

    check-cast v3, Ljava/net/URL;

    check-cast v1, Lexpo/modules/fetch/NativeRequest;

    .line 584
    iget-object v6, p0, Lexpo/modules/fetch/ExpoFetchModule$definition$lambda$18$lambda$17$$inlined$AsyncFunctionWithPromise$5;->this$0:Lexpo/modules/fetch/ExpoFetchModule;

    invoke-static {v6}, Lexpo/modules/fetch/ExpoFetchModule;->access$getClient(Lexpo/modules/fetch/ExpoFetchModule;)Lokhttp3/OkHttpClient;

    move-result-object v6

    invoke-virtual {v1, v6, v3, v5, p1}, Lexpo/modules/fetch/NativeRequest;->start(Lokhttp3/OkHttpClient;Ljava/net/URL;Lexpo/modules/fetch/NativeRequestInit;[B)V

    .line 585
    invoke-virtual {v1}, Lexpo/modules/fetch/NativeRequest;->getResponse$expo_release()Lexpo/modules/fetch/NativeResponse;

    move-result-object p1

    .line 587
    new-array v3, v4, [Lexpo/modules/fetch/ResponseState;

    sget-object v4, Lexpo/modules/fetch/ResponseState;->RESPONSE_RECEIVED:Lexpo/modules/fetch/ResponseState;

    aput-object v4, v3, v0

    .line 588
    sget-object v0, Lexpo/modules/fetch/ResponseState;->ERROR_RECEIVED:Lexpo/modules/fetch/ResponseState;

    aput-object v0, v3, v2

    .line 586
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 585
    new-instance v2, Lexpo/modules/fetch/ExpoFetchModule$definition$1$4$2$1;

    invoke-direct {v2, p2, v1}, Lexpo/modules/fetch/ExpoFetchModule$definition$1$4$2$1;-><init>(Lexpo/modules/kotlin/Promise;Lexpo/modules/fetch/NativeRequest;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, v0, v2}, Lexpo/modules/fetch/NativeResponse;->waitForStates(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
