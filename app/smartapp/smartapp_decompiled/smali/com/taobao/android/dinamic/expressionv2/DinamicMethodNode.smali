.class public Lcom/taobao/android/dinamic/expressionv2/DinamicMethodNode;
.super Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode;
.source "DinamicMethodNode.java"


# instance fields
.field private middle:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode;-><init>()V

    .line 38
    sget-object v0, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;->DinamicASTNodeTypeMethod:Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;

    iput-object v0, p0, Lcom/taobao/android/dinamic/expressionv2/DinamicMethodNode;->type:Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;

    return-void
.end method


# virtual methods
.method public evaluate()Ljava/lang/Object;
    .locals 6

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    iget-object v1, p0, Lcom/taobao/android/dinamic/expressionv2/DinamicMethodNode;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 48
    iget-object v4, p0, Lcom/taobao/android/dinamic/expressionv2/DinamicMethodNode;->children:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode;

    invoke-virtual {v4}, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode;->evaluate()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 50
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 52
    :cond_0
    sget-object v4, Lcom/taobao/android/dinamic/DinamicConstant;->NL:Lcom/taobao/android/dinamic/model/Null;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 58
    :cond_1
    iget-object v1, p0, Lcom/taobao/android/dinamic/expressionv2/DinamicMethodNode;->name:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 59
    iget-object v1, p0, Lcom/taobao/android/dinamic/expressionv2/DinamicMethodNode;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/taobao/android/dinamic/expression/parser/DinamicDataParserFactory;->getParser(Ljava/lang/String;)Lcom/taobao/android/dinamic/expression/parser/DinamicDataParser;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v3

    .line 61
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MethodName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/taobao/android/dinamic/expressionv2/DinamicMethodNode;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/android/dinamic/log/DinamicLog;->print(Ljava/lang/String;)V

    if-eqz v1, :cond_3

    .line 65
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "args:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/android/dinamic/log/DinamicLog;->print(Ljava/lang/String;)V

    .line 67
    iget-object v4, p0, Lcom/taobao/android/dinamic/expressionv2/DinamicMethodNode;->data:Ljava/lang/Object;

    check-cast v4, Lcom/taobao/android/dinamic/model/DinamicParams;

    invoke-interface {v1, v0, v4}, Lcom/taobao/android/dinamic/expression/parser/DinamicDataParser;->evalWithArgs(Ljava/util/List;Lcom/taobao/android/dinamic/model/DinamicParams;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const/4 v4, 0x2

    .line 72
    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "parse express failed, parser="

    aput-object v5, v4, v2

    .line 73
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    const-string v1, "DinamicExpresstion"

    .line 72
    invoke-static {v1, v0, v4}, Lcom/taobao/android/dinamic/log/DinamicLog;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V

    :cond_3
    :goto_3
    return-object v3
.end method

.method public evaluateMidlle()V
    .locals 4

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/dinamic/expressionv2/DinamicMethodNode;->middle:Ljava/util/List;

    .line 129
    iget-object v0, p0, Lcom/taobao/android/dinamic/expressionv2/DinamicMethodNode;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 132
    iget-object v2, p0, Lcom/taobao/android/dinamic/expressionv2/DinamicMethodNode;->children:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode;

    invoke-virtual {v2}, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode;->evaluate()Ljava/lang/Object;

    move-result-object v2

    .line 133
    iget-object v3, p0, Lcom/taobao/android/dinamic/expressionv2/DinamicMethodNode;->middle:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getMiddle()Ljava/util/List;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/taobao/android/dinamic/expressionv2/DinamicMethodNode;->middle:Ljava/util/List;

    return-object v0
.end method

.method public getType()Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;
    .locals 1

    .line 34
    sget-object v0, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;->DinamicASTNodeTypeMethod:Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;

    return-object v0
.end method

.method public handleEvent(Landroid/view/View;)V
    .locals 9

    const/4 v0, 0x0

    .line 89
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "DinamicExpression handleEvent"

    invoke-static {v2, v1}, Lcom/taobao/android/dinamic/log/DinamicLog;->w(Ljava/lang/String;[Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/taobao/android/dinamic/expressionv2/DinamicMethodNode;->children:Ljava/util/List;

    if-nez v1, :cond_0

    return-void

    .line 93
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 94
    iget-object v1, p0, Lcom/taobao/android/dinamic/expressionv2/DinamicMethodNode;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 96
    iget-object v3, p0, Lcom/taobao/android/dinamic/expressionv2/DinamicMethodNode;->children:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode;

    invoke-virtual {v3}, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode;->evaluate()Ljava/lang/Object;

    move-result-object v3

    .line 97
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 101
    iget-object v2, p0, Lcom/taobao/android/dinamic/expressionv2/DinamicMethodNode;->name:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 102
    iget-object v1, p0, Lcom/taobao/android/dinamic/expressionv2/DinamicMethodNode;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/taobao/android/dinamic/Dinamic;->getEventHandler(Ljava/lang/String;)Lcom/taobao/android/dinamic/dinamic/DinamicEventHandler;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_3

    .line 107
    :try_start_0
    iget-object v2, p0, Lcom/taobao/android/dinamic/expressionv2/DinamicMethodNode;->data:Ljava/lang/Object;

    check-cast v2, Lcom/taobao/android/dinamic/model/DinamicParams;

    .line 108
    invoke-virtual {v2}, Lcom/taobao/android/dinamic/model/DinamicParams;->getModule()Ljava/lang/String;

    move-result-object v4

    .line 109
    invoke-virtual {v2}, Lcom/taobao/android/dinamic/model/DinamicParams;->getOriginalData()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2}, Lcom/taobao/android/dinamic/model/DinamicParams;->getDinamicContext()Ljava/lang/Object;

    move-result-object v7

    sget v2, Lcom/taobao/android/dinamic/DinamicTagKey;->VIEW_PARAMS:I

    .line 110
    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/util/ArrayList;

    move-object v2, v1

    move-object v3, p1

    .line 108
    invoke-interface/range {v2 .. v8}, Lcom/taobao/android/dinamic/dinamic/DinamicEventHandler;->handleEvent(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const/4 v2, 0x2

    .line 114
    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "parse express failed, parser="

    aput-object v3, v2, v0

    .line 115
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v2, v1

    const-string v0, "DinamicExpression"

    .line 114
    invoke-static {v0, p1, v2}, Lcom/taobao/android/dinamic/log/DinamicLog;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setMiddle(Ljava/util/List;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/taobao/android/dinamic/expressionv2/DinamicMethodNode;->middle:Ljava/util/List;

    return-void
.end method
