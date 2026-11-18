.class public Lcom/rich/czlylibary/bean/Result;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected resCode:Ljava/lang/String;

.field protected resMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getResCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/Result;->resCode:Ljava/lang/String;

    return-object v0
.end method

.method public getResMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/Result;->resMsg:Ljava/lang/String;

    return-object v0
.end method

.method public setResCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/Result;->resCode:Ljava/lang/String;

    return-void
.end method

.method public setResMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/Result;->resMsg:Ljava/lang/String;

    return-void
.end method
