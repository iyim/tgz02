.class public Lcom/taobao/zcache/Error;
.super Ljava/lang/Object;
.source "Error.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# instance fields
.field private final code:I

.field private final message:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/taobao/zcache/Error;->code:I

    .line 22
    iput-object p2, p0, Lcom/taobao/zcache/Error;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/taobao/zcache/Error;->code:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/taobao/zcache/Error;->message:Ljava/lang/String;

    return-object v0
.end method
