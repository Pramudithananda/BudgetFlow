.class public final enum Lexpo/modules/fetch/ResponseState;
.super Ljava/lang/Enum;
.source "ResponseState.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lexpo/modules/fetch/ResponseState;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0008\u0080\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lexpo/modules/fetch/ResponseState;",
        "",
        "intValue",
        "",
        "(Ljava/lang/String;II)V",
        "getIntValue",
        "()I",
        "INITIALIZED",
        "STARTED",
        "RESPONSE_RECEIVED",
        "BODY_COMPLETED",
        "BODY_STREAMING_STARTED",
        "BODY_STREAMING_CANCELLED",
        "ERROR_RECEIVED",
        "expo_release"
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
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lexpo/modules/fetch/ResponseState;

.field public static final enum BODY_COMPLETED:Lexpo/modules/fetch/ResponseState;

.field public static final enum BODY_STREAMING_CANCELLED:Lexpo/modules/fetch/ResponseState;

.field public static final enum BODY_STREAMING_STARTED:Lexpo/modules/fetch/ResponseState;

.field public static final enum ERROR_RECEIVED:Lexpo/modules/fetch/ResponseState;

.field public static final enum INITIALIZED:Lexpo/modules/fetch/ResponseState;

.field public static final enum RESPONSE_RECEIVED:Lexpo/modules/fetch/ResponseState;

.field public static final enum STARTED:Lexpo/modules/fetch/ResponseState;


# instance fields
.field private final intValue:I


# direct methods
.method private static final synthetic $values()[Lexpo/modules/fetch/ResponseState;
    .locals 7

    sget-object v0, Lexpo/modules/fetch/ResponseState;->INITIALIZED:Lexpo/modules/fetch/ResponseState;

    sget-object v1, Lexpo/modules/fetch/ResponseState;->STARTED:Lexpo/modules/fetch/ResponseState;

    sget-object v2, Lexpo/modules/fetch/ResponseState;->RESPONSE_RECEIVED:Lexpo/modules/fetch/ResponseState;

    sget-object v3, Lexpo/modules/fetch/ResponseState;->BODY_COMPLETED:Lexpo/modules/fetch/ResponseState;

    sget-object v4, Lexpo/modules/fetch/ResponseState;->BODY_STREAMING_STARTED:Lexpo/modules/fetch/ResponseState;

    sget-object v5, Lexpo/modules/fetch/ResponseState;->BODY_STREAMING_CANCELLED:Lexpo/modules/fetch/ResponseState;

    sget-object v6, Lexpo/modules/fetch/ResponseState;->ERROR_RECEIVED:Lexpo/modules/fetch/ResponseState;

    filled-new-array/range {v0 .. v6}, [Lexpo/modules/fetch/ResponseState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 6
    new-instance v0, Lexpo/modules/fetch/ResponseState;

    const-string v1, "INITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lexpo/modules/fetch/ResponseState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lexpo/modules/fetch/ResponseState;->INITIALIZED:Lexpo/modules/fetch/ResponseState;

    .line 7
    new-instance v0, Lexpo/modules/fetch/ResponseState;

    const-string v1, "STARTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lexpo/modules/fetch/ResponseState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lexpo/modules/fetch/ResponseState;->STARTED:Lexpo/modules/fetch/ResponseState;

    .line 8
    new-instance v0, Lexpo/modules/fetch/ResponseState;

    const-string v1, "RESPONSE_RECEIVED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lexpo/modules/fetch/ResponseState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lexpo/modules/fetch/ResponseState;->RESPONSE_RECEIVED:Lexpo/modules/fetch/ResponseState;

    .line 9
    new-instance v0, Lexpo/modules/fetch/ResponseState;

    const-string v1, "BODY_COMPLETED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lexpo/modules/fetch/ResponseState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lexpo/modules/fetch/ResponseState;->BODY_COMPLETED:Lexpo/modules/fetch/ResponseState;

    .line 10
    new-instance v0, Lexpo/modules/fetch/ResponseState;

    const-string v1, "BODY_STREAMING_STARTED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lexpo/modules/fetch/ResponseState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lexpo/modules/fetch/ResponseState;->BODY_STREAMING_STARTED:Lexpo/modules/fetch/ResponseState;

    .line 11
    new-instance v0, Lexpo/modules/fetch/ResponseState;

    const-string v1, "BODY_STREAMING_CANCELLED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lexpo/modules/fetch/ResponseState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lexpo/modules/fetch/ResponseState;->BODY_STREAMING_CANCELLED:Lexpo/modules/fetch/ResponseState;

    .line 12
    new-instance v0, Lexpo/modules/fetch/ResponseState;

    const-string v1, "ERROR_RECEIVED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lexpo/modules/fetch/ResponseState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lexpo/modules/fetch/ResponseState;->ERROR_RECEIVED:Lexpo/modules/fetch/ResponseState;

    invoke-static {}, Lexpo/modules/fetch/ResponseState;->$values()[Lexpo/modules/fetch/ResponseState;

    move-result-object v0

    sput-object v0, Lexpo/modules/fetch/ResponseState;->$VALUES:[Lexpo/modules/fetch/ResponseState;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lexpo/modules/fetch/ResponseState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lexpo/modules/fetch/ResponseState;->intValue:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lexpo/modules/fetch/ResponseState;",
            ">;"
        }
    .end annotation

    sget-object v0, Lexpo/modules/fetch/ResponseState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lexpo/modules/fetch/ResponseState;
    .locals 1

    const-class v0, Lexpo/modules/fetch/ResponseState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lexpo/modules/fetch/ResponseState;

    return-object p0
.end method

.method public static values()[Lexpo/modules/fetch/ResponseState;
    .locals 1

    sget-object v0, Lexpo/modules/fetch/ResponseState;->$VALUES:[Lexpo/modules/fetch/ResponseState;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lexpo/modules/fetch/ResponseState;

    return-object v0
.end method


# virtual methods
.method public final getIntValue()I
    .locals 1

    .line 5
    iget v0, p0, Lexpo/modules/fetch/ResponseState;->intValue:I

    return v0
.end method
