.class public final Lcom/rich/gson/stream/MalformedJsonException;
.super Ljava/io/IOException;


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/rich/gson/stream/MalformedJsonException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    invoke-virtual {p0, p1}, Lcom/rich/gson/stream/MalformedJsonException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method
