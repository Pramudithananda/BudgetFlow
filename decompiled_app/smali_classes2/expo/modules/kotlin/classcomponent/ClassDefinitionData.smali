.class public final Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;
.super Ljava/lang/Object;
.source "ClassDefinitionData.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0007\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;",
        "",
        "name",
        "",
        "constructor",
        "Lexpo/modules/kotlin/functions/SyncFunctionComponent;",
        "objectDefinition",
        "Lexpo/modules/kotlin/objects/ObjectDefinitionData;",
        "isSharedRef",
        "",
        "(Ljava/lang/String;Lexpo/modules/kotlin/functions/SyncFunctionComponent;Lexpo/modules/kotlin/objects/ObjectDefinitionData;Z)V",
        "getConstructor",
        "()Lexpo/modules/kotlin/functions/SyncFunctionComponent;",
        "()Z",
        "getName",
        "()Ljava/lang/String;",
        "getObjectDefinition",
        "()Lexpo/modules/kotlin/objects/ObjectDefinitionData;",
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
.field private final constructor:Lexpo/modules/kotlin/functions/SyncFunctionComponent;

.field private final isSharedRef:Z

.field private final name:Ljava/lang/String;

.field private final objectDefinition:Lexpo/modules/kotlin/objects/ObjectDefinitionData;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lexpo/modules/kotlin/functions/SyncFunctionComponent;Lexpo/modules/kotlin/objects/ObjectDefinitionData;Z)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constructor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "objectDefinition"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;->name:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;->constructor:Lexpo/modules/kotlin/functions/SyncFunctionComponent;

    .line 9
    iput-object p3, p0, Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;->objectDefinition:Lexpo/modules/kotlin/objects/ObjectDefinitionData;

    .line 10
    iput-boolean p4, p0, Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;->isSharedRef:Z

    return-void
.end method


# virtual methods
.method public final getConstructor()Lexpo/modules/kotlin/functions/SyncFunctionComponent;
    .locals 1

    .line 8
    iget-object v0, p0, Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;->constructor:Lexpo/modules/kotlin/functions/SyncFunctionComponent;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getObjectDefinition()Lexpo/modules/kotlin/objects/ObjectDefinitionData;
    .locals 1

    .line 9
    iget-object v0, p0, Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;->objectDefinition:Lexpo/modules/kotlin/objects/ObjectDefinitionData;

    return-object v0
.end method

.method public final isSharedRef()Z
    .locals 1

    .line 10
    iget-boolean v0, p0, Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;->isSharedRef:Z

    return v0
.end method
