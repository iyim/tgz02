.class public Lcom/taobao/phenix/cache/memory/MemOnlyFailedException;
.super Ljava/lang/Exception;
.source "MemOnlyFailedException.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "no memory cache , MemCache cannot conduct final result at memOnly=true"

    .line 6
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
