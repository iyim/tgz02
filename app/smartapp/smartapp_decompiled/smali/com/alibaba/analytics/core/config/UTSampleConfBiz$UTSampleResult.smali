.class Lcom/alibaba/analytics/core/config/UTSampleConfBiz$UTSampleResult;
.super Ljava/lang/Object;
.source "UTSampleConfBiz.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/analytics/core/config/UTSampleConfBiz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UTSampleResult"
.end annotation


# instance fields
.field private mIsRuleExist:Z

.field private mResult:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 153
    iput-boolean v0, p0, Lcom/alibaba/analytics/core/config/UTSampleConfBiz$UTSampleResult;->mResult:Z

    .line 154
    iput-boolean v0, p0, Lcom/alibaba/analytics/core/config/UTSampleConfBiz$UTSampleResult;->mIsRuleExist:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/analytics/core/config/UTSampleConfBiz$1;)V
    .locals 0

    .line 152
    invoke-direct {p0}, Lcom/alibaba/analytics/core/config/UTSampleConfBiz$UTSampleResult;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getResult()Z
    .locals 1

    .line 161
    iget-boolean v0, p0, Lcom/alibaba/analytics/core/config/UTSampleConfBiz$UTSampleResult;->mResult:Z

    return v0
.end method

.method public isRuleExist()Z
    .locals 1

    .line 169
    iget-boolean v0, p0, Lcom/alibaba/analytics/core/config/UTSampleConfBiz$UTSampleResult;->mIsRuleExist:Z

    return v0
.end method

.method public setIsRuleExist(Z)V
    .locals 0

    .line 165
    iput-boolean p1, p0, Lcom/alibaba/analytics/core/config/UTSampleConfBiz$UTSampleResult;->mIsRuleExist:Z

    return-void
.end method

.method public setResult(Z)V
    .locals 0

    .line 157
    iput-boolean p1, p0, Lcom/alibaba/analytics/core/config/UTSampleConfBiz$UTSampleResult;->mResult:Z

    return-void
.end method
