.class public final Lexpo/modules/fetch/ExpoFetchModule$definition$lambda$18$lambda$13$$inlined$Constructor$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ClassComponentBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


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
        "Lkotlin/jvm/functions/Function1<",
        "[",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nClassComponentBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClassComponentBuilder.kt\nexpo/modules/kotlin/classcomponent/ClassComponentBuilder$Constructor$1\n+ 2 ExpoFetchModule.kt\nexpo/modules/fetch/ExpoFetchModule\n*L\n1#1,186:1\n63#2:187\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0003\u0010\u0000\u001a\u0004\u0018\u00010\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u0010\u0010\u0003\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00010\u0004H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "SharedObjectType",
        "it",
        "",
        "invoke",
        "([Ljava/lang/Object;)Ljava/lang/Object;",
        "expo/modules/kotlin/classcomponent/ClassComponentBuilder$Constructor$1"
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

    iput-object p1, p0, Lexpo/modules/fetch/ExpoFetchModule$definition$lambda$18$lambda$13$$inlined$Constructor$1;->this$0:Lexpo/modules/fetch/ExpoFetchModule;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 77
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lexpo/modules/fetch/ExpoFetchModule$definition$lambda$18$lambda$13$$inlined$Constructor$1;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    new-instance p1, Lexpo/modules/fetch/NativeResponse;

    iget-object v0, p0, Lexpo/modules/fetch/ExpoFetchModule$definition$lambda$18$lambda$13$$inlined$Constructor$1;->this$0:Lexpo/modules/fetch/ExpoFetchModule;

    invoke-virtual {v0}, Lexpo/modules/fetch/ExpoFetchModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    iget-object v1, p0, Lexpo/modules/fetch/ExpoFetchModule$definition$lambda$18$lambda$13$$inlined$Constructor$1;->this$0:Lexpo/modules/fetch/ExpoFetchModule;

    invoke-static {v1}, Lexpo/modules/fetch/ExpoFetchModule;->access$getModuleCoroutineScope(Lexpo/modules/fetch/ExpoFetchModule;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lexpo/modules/fetch/NativeResponse;-><init>(Lexpo/modules/kotlin/AppContext;Lkotlinx/coroutines/CoroutineScope;)V

    return-object p1
.end method
