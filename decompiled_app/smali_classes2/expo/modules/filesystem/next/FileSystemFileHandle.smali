.class public final Lexpo/modules/filesystem/next/FileSystemFileHandle;
.super Lexpo/modules/kotlin/sharedobjects/SharedRef;
.source "FileSystemFileHandle.kt"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lexpo/modules/kotlin/sharedobjects/SharedRef<",
        "Ljava/nio/channels/FileChannel;",
        ">;",
        "Ljava/lang/AutoCloseable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u0012H\u0002J\u000e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017J\u0008\u0010\u0018\u001a\u00020\u0012H\u0016J\u000e\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u0015R\u000e\u0010\u0007\u001a\u00020\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000R(\u0010\n\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u0013\u0010\u000f\u001a\u0004\u0018\u00010\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u000c\u00a8\u0006\u001b"
    }
    d2 = {
        "Lexpo/modules/filesystem/next/FileSystemFileHandle;",
        "Lexpo/modules/kotlin/sharedobjects/SharedRef;",
        "Ljava/nio/channels/FileChannel;",
        "Ljava/lang/AutoCloseable;",
        "file",
        "Lexpo/modules/filesystem/next/FileSystemFile;",
        "(Lexpo/modules/filesystem/next/FileSystemFile;)V",
        "fileChannel",
        "value",
        "",
        "offset",
        "getOffset",
        "()Ljava/lang/Long;",
        "setOffset",
        "(Ljava/lang/Long;)V",
        "size",
        "getSize",
        "close",
        "",
        "ensureIsOpen",
        "read",
        "",
        "length",
        "",
        "sharedObjectDidRelease",
        "write",
        "data",
        "expo-file-system_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final fileChannel:Ljava/nio/channels/FileChannel;


# direct methods
.method public constructor <init>(Lexpo/modules/filesystem/next/FileSystemFile;)V
    .locals 2

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Lexpo/modules/filesystem/next/FileSystemFile;->getFile()Ljava/io/File;

    move-result-object p1

    const-string v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    const-string v0, "getChannel(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lexpo/modules/kotlin/sharedobjects/SharedRef;-><init>(Ljava/lang/Object;Lexpo/modules/kotlin/RuntimeContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    invoke-virtual {p0}, Lexpo/modules/filesystem/next/FileSystemFileHandle;->getRef()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/channels/FileChannel;

    iput-object p1, p0, Lexpo/modules/filesystem/next/FileSystemFileHandle;->fileChannel:Ljava/nio/channels/FileChannel;

    return-void
.end method

.method private final ensureIsOpen()V
    .locals 2

    .line 11
    iget-object v0, p0, Lexpo/modules/filesystem/next/FileSystemFileHandle;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 12
    :cond_0
    new-instance v0, Lexpo/modules/filesystem/next/UnableToReadHandleException;

    const-string v1, "file handle is closed"

    invoke-direct {v0, v1}, Lexpo/modules/filesystem/next/UnableToReadHandleException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 21
    iget-object v0, p0, Lexpo/modules/filesystem/next/FileSystemFileHandle;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    return-void
.end method

.method public final getOffset()Ljava/lang/Long;
    .locals 2

    .line 48
    :try_start_0
    iget-object v0, p0, Lexpo/modules/filesystem/next/FileSystemFileHandle;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getSize()Ljava/lang/Long;
    .locals 2

    .line 63
    :try_start_0
    iget-object v0, p0, Lexpo/modules/filesystem/next/FileSystemFileHandle;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final read(I)[B
    .locals 4

    .line 25
    invoke-direct {p0}, Lexpo/modules/filesystem/next/FileSystemFileHandle;->ensureIsOpen()V

    .line 27
    :try_start_0
    iget-object v0, p0, Lexpo/modules/filesystem/next/FileSystemFileHandle;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    iget-object v2, p0, Lexpo/modules/filesystem/next/FileSystemFileHandle;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 28
    iget-object v0, p0, Lexpo/modules/filesystem/next/FileSystemFileHandle;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 29
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    const-string v0, "array(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 31
    new-instance v0, Lexpo/modules/filesystem/next/UnableToReadHandleException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "unknown error"

    :cond_0
    invoke-direct {v0, p1}, Lexpo/modules/filesystem/next/UnableToReadHandleException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setOffset(Ljava/lang/Long;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lexpo/modules/filesystem/next/FileSystemFileHandle;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    return-void
.end method

.method public sharedObjectDidRelease()V
    .locals 0

    .line 17
    invoke-virtual {p0}, Lexpo/modules/filesystem/next/FileSystemFileHandle;->close()V

    return-void
.end method

.method public final write([B)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Lexpo/modules/filesystem/next/FileSystemFileHandle;->ensureIsOpen()V

    .line 38
    :try_start_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 39
    iget-object v0, p0, Lexpo/modules/filesystem/next/FileSystemFileHandle;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 41
    new-instance v0, Lexpo/modules/filesystem/next/UnableToWriteHandleException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "unknown error"

    :cond_0
    invoke-direct {v0, p1}, Lexpo/modules/filesystem/next/UnableToWriteHandleException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
