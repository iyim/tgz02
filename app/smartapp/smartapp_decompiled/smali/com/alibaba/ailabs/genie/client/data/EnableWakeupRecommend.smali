.class public Lcom/alibaba/ailabs/genie/client/data/EnableWakeupRecommend;
.super Lcom/alibaba/ailabs/genie/client/data/BaseReqData;
.source "EnableWakeupRecommend.java"


# instance fields
.field private enable:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/client/data/BaseReqData;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/client/data/BaseReqData;-><init>()V

    .line 10
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/client/data/EnableWakeupRecommend;->enable:Z

    return-void
.end method


# virtual methods
.method public isEnable()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/client/data/EnableWakeupRecommend;->enable:Z

    return v0
.end method

.method public setEnable(Z)V
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/client/data/EnableWakeupRecommend;->enable:Z

    return-void
.end method
