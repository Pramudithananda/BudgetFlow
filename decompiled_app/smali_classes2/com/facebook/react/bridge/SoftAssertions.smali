.class public final Lcom/facebook/react/bridge/SoftAssertions;
.super Ljava/lang/Object;
.source "SoftAssertions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0007J\u001f\u0010\t\u001a\u0004\u0018\u0001H\n\"\u0004\u0008\u0000\u0010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u0001H\nH\u0007\u00a2\u0006\u0002\u0010\u000cJ\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0008H\u0007\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/facebook/react/bridge/SoftAssertions;",
        "",
        "()V",
        "assertCondition",
        "",
        "condition",
        "",
        "message",
        "",
        "assertNotNull",
        "T",
        "instance",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "assertUnreachable",
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
.field public static final INSTANCE:Lcom/facebook/react/bridge/SoftAssertions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/react/bridge/SoftAssertions;

    invoke-direct {v0}, Lcom/facebook/react/bridge/SoftAssertions;-><init>()V

    sput-object v0, Lcom/facebook/react/bridge/SoftAssertions;->INSTANCE:Lcom/facebook/react/bridge/SoftAssertions;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final assertCondition(ZLjava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_0

    .line 37
    new-instance p0, Lcom/facebook/react/bridge/AssertionException;

    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/AssertionException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    const-string p1, "SoftAssertions"

    invoke-static {p1, p0}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static final assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p0, :cond_0

    .line 49
    new-instance v0, Lcom/facebook/react/bridge/AssertionException;

    const-string v1, "Expected object to not be null!"

    invoke-direct {v0, v1}, Lcom/facebook/react/bridge/AssertionException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    .line 48
    const-string v1, "SoftAssertions"

    invoke-static {v1, v0}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-object p0
.end method

.method public static final assertUnreachable(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "message"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance v0, Lcom/facebook/react/bridge/AssertionException;

    invoke-direct {v0, p0}, Lcom/facebook/react/bridge/AssertionException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    const-string p0, "SoftAssertions"

    invoke-static {p0, v0}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
