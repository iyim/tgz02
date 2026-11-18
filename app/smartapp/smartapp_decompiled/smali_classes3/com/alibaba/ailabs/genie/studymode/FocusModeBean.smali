.class public Lcom/alibaba/ailabs/genie/studymode/FocusModeBean;
.super Ljava/lang/Object;
.source "FocusModeBean.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/utils/proguard/IKeepFieldName;


# instance fields
.field private value:I


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
.method public getValue()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/alibaba/ailabs/genie/studymode/FocusModeBean;->value:I

    return v0
.end method

.method public setValue(I)V
    .locals 0

    .line 15
    iput p1, p0, Lcom/alibaba/ailabs/genie/studymode/FocusModeBean;->value:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 20
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
