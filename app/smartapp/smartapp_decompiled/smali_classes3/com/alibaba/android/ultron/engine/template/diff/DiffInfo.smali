.class public Lcom/alibaba/android/ultron/engine/template/diff/DiffInfo;
.super Ljava/lang/Object;
.source "DiffInfo.java"


# static fields
.field public static final OP_TYPE_DELETE:Ljava/lang/String; = "delete"

.field public static final OP_TYPE_INSERT:Ljava/lang/String; = "insert"

.field public static final OP_TYPE_RELOAD:Ljava/lang/String; = "reload"

.field public static final OP_TYPE_REPLACE:Ljava/lang/String; = "replace"

.field private static final TAG:Ljava/lang/String; = "DiffInfo"


# instance fields
.field public opType:Ljava/lang/String;

.field parent:Ljava/lang/String;

.field position:Ljava/lang/String;

.field target:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static createDeleteDiff(Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;)Lcom/alibaba/android/ultron/engine/template/diff/DiffInfo;
    .locals 2

    .line 32
    new-instance v0, Lcom/alibaba/android/ultron/engine/template/diff/DiffInfo;

    invoke-direct {v0}, Lcom/alibaba/android/ultron/engine/template/diff/DiffInfo;-><init>()V

    const-string v1, "delete"

    .line 33
    iput-object v1, v0, Lcom/alibaba/android/ultron/engine/template/diff/DiffInfo;->opType:Ljava/lang/String;

    .line 34
    invoke-virtual {p0}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->getComponentKey()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/alibaba/android/ultron/engine/template/diff/DiffInfo;->target:Ljava/lang/String;

    return-object v0
.end method

.method public static createInsertDiff(Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;)Lcom/alibaba/android/ultron/engine/template/diff/DiffInfo;
    .locals 4

    .line 43
    new-instance v0, Lcom/alibaba/android/ultron/engine/template/diff/DiffInfo;

    invoke-direct {v0}, Lcom/alibaba/android/ultron/engine/template/diff/DiffInfo;-><init>()V

    const-string v1, "insert"

    .line 44
    iput-object v1, v0, Lcom/alibaba/android/ultron/engine/template/diff/DiffInfo;->opType:Ljava/lang/String;

    .line 45
    invoke-virtual {p0}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->getComponentKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/ultron/engine/template/diff/DiffInfo;->target:Ljava/lang/String;

    .line 46
    invoke-virtual {p0}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->getParent()Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 48
    invoke-virtual {v1}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->getComponentKey()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/android/ultron/engine/template/diff/DiffInfo;->parent:Ljava/lang/String;

    .line 49
    invoke-virtual {v1}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-lez p0, :cond_1

    .line 51
    invoke-virtual {v1}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->getChildren()Ljava/util/List;

    move-result-object v1

    sub-int/2addr p0, v2

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;

    if-eqz p0, :cond_1

    .line 53
    invoke-virtual {p0}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->getComponentKey()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/alibaba/android/ultron/engine/template/diff/DiffInfo;->position:Ljava/lang/String;

    goto :goto_0

    .line 57
    :cond_0
    new-array p0, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createInsertDiff parent is null: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/alibaba/android/ultron/engine/template/diff/DiffInfo;->target:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v1

    const-string v1, "DiffInfo"

    invoke-static {v1, p0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static createReloadDiff(Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;)Lcom/alibaba/android/ultron/engine/template/diff/DiffInfo;
    .locals 2

    .line 81
    new-instance v0, Lcom/alibaba/android/ultron/engine/template/diff/DiffInfo;

    invoke-direct {v0}, Lcom/alibaba/android/ultron/engine/template/diff/DiffInfo;-><init>()V

    const-string v1, "reload"

    .line 82
    iput-object v1, v0, Lcom/alibaba/android/ultron/engine/template/diff/DiffInfo;->opType:Ljava/lang/String;

    .line 83
    invoke-virtual {p0}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->getComponentKey()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/alibaba/android/ultron/engine/template/diff/DiffInfo;->target:Ljava/lang/String;

    return-object v0
.end method

.method public static createReplaceDiff(Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;)Lcom/alibaba/android/ultron/engine/template/diff/DiffInfo;
    .locals 2

    .line 67
    new-instance v0, Lcom/alibaba/android/ultron/engine/template/diff/DiffInfo;

    invoke-direct {v0}, Lcom/alibaba/android/ultron/engine/template/diff/DiffInfo;-><init>()V

    const-string v1, "replace"

    .line 68
    iput-object v1, v0, Lcom/alibaba/android/ultron/engine/template/diff/DiffInfo;->opType:Ljava/lang/String;

    .line 69
    invoke-virtual {p0}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->getComponentKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/ultron/engine/template/diff/DiffInfo;->target:Ljava/lang/String;

    .line 70
    invoke-virtual {p0}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->getParent()Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->getComponentKey()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/alibaba/android/ultron/engine/template/diff/DiffInfo;->parent:Ljava/lang/String;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public toProtocolJson()Lcom/alibaba/fastjson/JSONObject;
    .locals 3

    .line 88
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 89
    iget-object v1, p0, Lcom/alibaba/android/ultron/engine/template/diff/DiffInfo;->opType:Ljava/lang/String;

    const-string v2, "opType"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v1, p0, Lcom/alibaba/android/ultron/engine/template/diff/DiffInfo;->target:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "target"

    .line 91
    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/ultron/engine/template/diff/DiffInfo;->parent:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "parent"

    .line 94
    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/ultron/engine/template/diff/DiffInfo;->position:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, "position"

    .line 97
    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DiffInfo: opType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/android/ultron/engine/template/diff/DiffInfo;->opType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", target:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/android/ultron/engine/template/diff/DiffInfo;->target:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", parent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/android/ultron/engine/template/diff/DiffInfo;->parent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/android/ultron/engine/template/diff/DiffInfo;->position:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
