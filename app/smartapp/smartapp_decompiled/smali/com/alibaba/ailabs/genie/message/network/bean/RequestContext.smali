.class public Lcom/alibaba/ailabs/genie/message/network/bean/RequestContext;
.super Ljava/lang/Object;
.source "RequestContext.java"


# instance fields
.field private source:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getSource()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/network/bean/RequestContext;->source:Ljava/lang/String;

    return-object v0
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/network/bean/RequestContext;->source:Ljava/lang/String;

    return-void
.end method
