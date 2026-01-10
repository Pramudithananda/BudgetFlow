.class final Lexpo/modules/fetch/NativeResponse$isInvalidState$validStatesString$1;
.super Lkotlin/jvm/internal/Lambda;
.source "NativeResponse.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/fetch/NativeResponse;->isInvalidState([Lexpo/modules/fetch/ResponseState;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lexpo/modules/fetch/ResponseState;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lexpo/modules/fetch/ResponseState;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lexpo/modules/fetch/NativeResponse$isInvalidState$validStatesString$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/fetch/NativeResponse$isInvalidState$validStatesString$1;

    invoke-direct {v0}, Lexpo/modules/fetch/NativeResponse$isInvalidState$validStatesString$1;-><init>()V

    sput-object v0, Lexpo/modules/fetch/NativeResponse$isInvalidState$validStatesString$1;->INSTANCE:Lexpo/modules/fetch/NativeResponse$isInvalidState$validStatesString$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lexpo/modules/fetch/ResponseState;)Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    invoke-virtual {p1}, Lexpo/modules/fetch/ResponseState;->getIntValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 149
    check-cast p1, Lexpo/modules/fetch/ResponseState;

    invoke-virtual {p0, p1}, Lexpo/modules/fetch/NativeResponse$isInvalidState$validStatesString$1;->invoke(Lexpo/modules/fetch/ResponseState;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
