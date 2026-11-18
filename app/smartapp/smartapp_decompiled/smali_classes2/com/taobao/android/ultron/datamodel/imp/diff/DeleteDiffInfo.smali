.class public Lcom/taobao/android/ultron/datamodel/imp/diff/DeleteDiffInfo;
.super Ljava/lang/Object;
.source "DeleteDiffInfo.java"

# interfaces
.implements Lcom/taobao/android/ultron/datamodel/imp/diff/ComponentDiffInfo;


# instance fields
.field component:Lcom/taobao/android/ultron/common/model/IDMComponent;

.field position:I


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
.method public getComponent()Lcom/taobao/android/ultron/common/model/IDMComponent;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/diff/DeleteDiffInfo;->component:Lcom/taobao/android/ultron/common/model/IDMComponent;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/taobao/android/ultron/datamodel/imp/diff/DeleteDiffInfo;->position:I

    return v0
.end method

.method public setComponent(Lcom/taobao/android/ultron/common/model/IDMComponent;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/taobao/android/ultron/datamodel/imp/diff/DeleteDiffInfo;->component:Lcom/taobao/android/ultron/common/model/IDMComponent;

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/taobao/android/ultron/datamodel/imp/diff/DeleteDiffInfo;->position:I

    return-void
.end method
