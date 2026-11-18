.class public Lcom/taobao/phenix/loader/network/HttpCodeResponseException;
.super Lcom/taobao/phenix/loader/network/NetworkResponseException;
.source "HttpCodeResponseException.java"


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const-string v0, "Failed Http Code"

    .line 6
    invoke-direct {p0, p1, v0}, Lcom/taobao/phenix/loader/network/NetworkResponseException;-><init>(ILjava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
