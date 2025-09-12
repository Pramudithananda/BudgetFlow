.class public final Lexpo/modules/kotlin/types/EmptyKType;
.super Ljava/lang/Object;
.source "AnyType.kt"

# interfaces
.implements Lkotlin/reflect/KType;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u001b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u001b\u0012\n\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0013\u0010\u0012\u001a\u00020\u00052\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0096\u0002J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016R\u001a\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u001a\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\r0\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000bR\u0018\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\u0011\u00a8\u0006\u0017"
    }
    d2 = {
        "Lexpo/modules/kotlin/types/EmptyKType;",
        "Lkotlin/reflect/KType;",
        "classifier",
        "Lkotlin/reflect/KClass;",
        "isMarkedNullable",
        "",
        "(Lkotlin/reflect/KClass;Z)V",
        "annotations",
        "",
        "",
        "getAnnotations",
        "()Ljava/util/List;",
        "arguments",
        "Lkotlin/reflect/KTypeProjection;",
        "getArguments",
        "getClassifier",
        "()Lkotlin/reflect/KClass;",
        "()Z",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "expo-modules-core_release"
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
.field public static final $stable:I = 0x8


# instance fields
.field private final classifier:Lkotlin/reflect/KClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/KClass<",
            "*>;"
        }
    .end annotation
.end field

.field private final isMarkedNullable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/KClass;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "*>;Z)V"
        }
    .end annotation

    const-string v0, "classifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lexpo/modules/kotlin/types/EmptyKType;->classifier:Lkotlin/reflect/KClass;

    .line 70
    iput-boolean p2, p0, Lexpo/modules/kotlin/types/EmptyKType;->isMarkedNullable:Z

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/reflect/KClass;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 68
    :cond_0
    invoke-direct {p0, p1, p2}, Lexpo/modules/kotlin/types/EmptyKType;-><init>(Lkotlin/reflect/KClass;Z)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 79
    :cond_0
    instance-of v1, p1, Lexpo/modules/kotlin/types/EmptyKType;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 81
    :cond_1
    invoke-virtual {p0}, Lexpo/modules/kotlin/types/EmptyKType;->getClassifier()Lkotlin/reflect/KClass;

    move-result-object v1

    check-cast p1, Lexpo/modules/kotlin/types/EmptyKType;

    invoke-virtual {p1}, Lexpo/modules/kotlin/types/EmptyKType;->getClassifier()Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lexpo/modules/kotlin/types/EmptyKType;->isMarkedNullable()Z

    move-result v1

    invoke-virtual {p1}, Lexpo/modules/kotlin/types/EmptyKType;->isMarkedNullable()Z

    move-result p1

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getAnnotations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 73
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getArguments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/KTypeProjection;",
            ">;"
        }
    .end annotation

    .line 75
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getClassifier()Lkotlin/reflect/KClass;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/KClass<",
            "*>;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lexpo/modules/kotlin/types/EmptyKType;->classifier:Lkotlin/reflect/KClass;

    return-object v0
.end method

.method public bridge synthetic getClassifier()Lkotlin/reflect/KClassifier;
    .locals 1

    .line 68
    invoke-virtual {p0}, Lexpo/modules/kotlin/types/EmptyKType;->getClassifier()Lkotlin/reflect/KClass;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KClassifier;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 85
    invoke-virtual {p0}, Lexpo/modules/kotlin/types/EmptyKType;->getClassifier()Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lexpo/modules/kotlin/types/EmptyKType;->isMarkedNullable()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isMarkedNullable()Z
    .locals 1

    .line 70
    iget-boolean v0, p0, Lexpo/modules/kotlin/types/EmptyKType;->isMarkedNullable:Z

    return v0
.end method
