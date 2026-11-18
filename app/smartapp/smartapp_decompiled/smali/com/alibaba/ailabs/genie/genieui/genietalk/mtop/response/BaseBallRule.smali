.class public Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/BaseBallRule;
.super Ljava/lang/Object;
.source "BaseBallRule.java"


# instance fields
.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/BaseBallRule;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/BaseBallRule;->type:Ljava/lang/String;

    return-void
.end method
