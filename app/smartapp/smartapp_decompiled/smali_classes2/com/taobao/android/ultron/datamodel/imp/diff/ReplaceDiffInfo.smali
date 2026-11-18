.class public Lcom/taobao/android/ultron/datamodel/imp/diff/ReplaceDiffInfo;
.super Ljava/lang/Object;
.source "ReplaceDiffInfo.java"

# interfaces
.implements Lcom/taobao/android/ultron/datamodel/imp/diff/ComponentDiffInfo;


# instance fields
.field component:Lcom/taobao/android/ultron/common/model/IDMComponent;

.field position:I

.field replaced:Lcom/taobao/android/ultron/common/model/IDMComponent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getComponent()Lcom/taobao/android/ultron/common/model/IDMComponent;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/diff/ReplaceDiffInfo;->component:Lcom/taobao/android/ultron/common/model/IDMComponent;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/taobao/android/ultron/datamodel/imp/diff/ReplaceDiffInfo;->position:I

    return v0
.end method

.method public getReplaced()Lcom/taobao/android/ultron/common/model/IDMComponent;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/diff/ReplaceDiffInfo;->replaced:Lcom/taobao/android/ultron/common/model/IDMComponent;

    return-object v0
.end method

.method public setComponent(Lcom/taobao/android/ultron/common/model/IDMComponent;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/taobao/android/ultron/datamodel/imp/diff/ReplaceDiffInfo;->component:Lcom/taobao/android/ultron/common/model/IDMComponent;

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/taobao/android/ultron/datamodel/imp/diff/ReplaceDiffInfo;->position:I

    return-void
.end method

.method public setReplaced(Lcom/taobao/android/ultron/common/model/IDMComponent;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/taobao/android/ultron/datamodel/imp/diff/ReplaceDiffInfo;->replaced:Lcom/taobao/android/ultron/common/model/IDMComponent;

    return-void
.end method
