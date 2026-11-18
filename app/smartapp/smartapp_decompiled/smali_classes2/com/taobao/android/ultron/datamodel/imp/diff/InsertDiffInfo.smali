.class public Lcom/taobao/android/ultron/datamodel/imp/diff/InsertDiffInfo;
.super Ljava/lang/Object;
.source "InsertDiffInfo.java"

# interfaces
.implements Lcom/taobao/android/ultron/datamodel/imp/diff/ComponentDiffInfo;


# instance fields
.field components:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/IDMComponent;",
            ">;"
        }
    .end annotation
.end field

.field parent:Lcom/taobao/android/ultron/common/model/IDMComponent;

.field position:Lcom/taobao/android/ultron/common/model/IDMComponent;


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
.method public getComponents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/IDMComponent;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/diff/InsertDiffInfo;->components:Ljava/util/List;

    return-object v0
.end method

.method public getParent()Lcom/taobao/android/ultron/common/model/IDMComponent;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/diff/InsertDiffInfo;->parent:Lcom/taobao/android/ultron/common/model/IDMComponent;

    return-object v0
.end method

.method public getPosition()Lcom/taobao/android/ultron/common/model/IDMComponent;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/diff/InsertDiffInfo;->position:Lcom/taobao/android/ultron/common/model/IDMComponent;

    return-object v0
.end method

.method public setComponents(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/IDMComponent;",
            ">;)V"
        }
    .end annotation

    .line 20
    iput-object p1, p0, Lcom/taobao/android/ultron/datamodel/imp/diff/InsertDiffInfo;->components:Ljava/util/List;

    return-void
.end method

.method public setParent(Lcom/taobao/android/ultron/common/model/IDMComponent;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/taobao/android/ultron/datamodel/imp/diff/InsertDiffInfo;->parent:Lcom/taobao/android/ultron/common/model/IDMComponent;

    return-void
.end method

.method public setPosition(Lcom/taobao/android/ultron/common/model/IDMComponent;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/taobao/android/ultron/datamodel/imp/diff/InsertDiffInfo;->position:Lcom/taobao/android/ultron/common/model/IDMComponent;

    return-void
.end method
