.class public Lcom/taobao/android/dinamic/expressionv2/ExpressionProcessor;
.super Ljava/lang/Object;
.source "ExpressionProcessor.java"

# interfaces
.implements Lcom/taobao/android/dinamic/expressionv2/DinamicProcessor;


# static fields
.field private static expressionTreeCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private dinamicParams:Lcom/taobao/android/dinamic/model/DinamicParams;

.field private expression:Ljava/lang/String;

.field private viewIdentify:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/taobao/android/dinamic/expressionv2/ExpressionProcessor;->expressionTreeCache:Landroid/util/LruCache;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/taobao/android/dinamic/model/DinamicParams;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/taobao/android/dinamic/expressionv2/ExpressionProcessor;->expression:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/taobao/android/dinamic/expressionv2/ExpressionProcessor;->dinamicParams:Lcom/taobao/android/dinamic/model/DinamicParams;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamic/model/DinamicParams;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/taobao/android/dinamic/expressionv2/ExpressionProcessor;->expression:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/taobao/android/dinamic/expressionv2/ExpressionProcessor;->viewIdentify:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/taobao/android/dinamic/expressionv2/ExpressionProcessor;->dinamicParams:Lcom/taobao/android/dinamic/model/DinamicParams;

    return-void
.end method

.method private static computeValue(Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode;Ljava/lang/String;Lcom/taobao/android/dinamic/model/DinamicParams;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 136
    invoke-virtual {p0}, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode;->evaluate()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getEventArray(Landroid/view/View;Ljava/lang/String;Lcom/taobao/android/dinamic/model/DinamicParams;)[Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode;
    .locals 3

    .line 246
    sget-boolean v0, Lcom/taobao/android/dinamic/DinamicConstant;->ISCACHE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 247
    sget-object v0, Lcom/taobao/android/dinamic/expressionv2/ExpressionProcessor;->expressionTreeCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_3

    .line 251
    new-instance v0, Lcom/taobao/android/dinamic/expressionv2/DinamicTokenizer;

    invoke-direct {v0}, Lcom/taobao/android/dinamic/expressionv2/DinamicTokenizer;-><init>()V

    .line 257
    invoke-virtual {v0, p1}, Lcom/taobao/android/dinamic/expressionv2/DinamicTokenizer;->tokensWithExpr(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 261
    new-instance v2, Lcom/taobao/android/dinamic/expressionv2/DinamicASTBuilder;

    invoke-direct {v2}, Lcom/taobao/android/dinamic/expressionv2/DinamicASTBuilder;-><init>()V

    .line 262
    invoke-virtual {v2, p2}, Lcom/taobao/android/dinamic/expressionv2/DinamicASTBuilder;->setDinamicParams(Lcom/taobao/android/dinamic/model/DinamicParams;)V

    .line 263
    invoke-virtual {v2, v0}, Lcom/taobao/android/dinamic/expressionv2/DinamicASTBuilder;->parseWithTokens(Landroid/util/Pair;)Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 268
    sget-boolean v0, Lcom/taobao/android/dinamic/DinamicConstant;->ISCACHE:Z

    if-eqz v0, :cond_1

    .line 269
    sget-object v0, Lcom/taobao/android/dinamic/expressionv2/ExpressionProcessor;->expressionTreeCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    :cond_1
    invoke-static {p0, p2}, Lcom/taobao/android/dinamic/expressionv2/ExpressionProcessor;->getEventArray_(Landroid/view/View;Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode;)[Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1

    .line 278
    :cond_3
    invoke-virtual {v0, p2}, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode;->bindData(Ljava/lang/Object;)V

    .line 279
    invoke-static {p0, v0}, Lcom/taobao/android/dinamic/expressionv2/ExpressionProcessor;->getEventArray_(Landroid/view/View;Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode;)[Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode;

    move-result-object p0

    return-object p0
.end method

.method private static getEventArray_(Landroid/view/View;Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode;)[Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode;
    .locals 3

    const/4 p0, 0x0

    if-eqz p1, :cond_3

    .line 299
    iget-object v0, p1, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode;->type:Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;

    sget-object v1, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;->DinamicASTNodeTypeMethod:Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 302
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/taobao/android/dinamic/expressionv2/DinamicMethodNode;

    invoke-virtual {v0}, Lcom/taobao/android/dinamic/expressionv2/DinamicMethodNode;->evaluateMidlle()V

    const/4 v0, 0x1

    .line 303
    new-array v0, v0, [Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode;

    aput-object p1, v0, v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string/jumbo p1, "root node class cast error!"

    .line 306
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v0, "Dinamic"

    invoke-static {v0, p1}, Lcom/taobao/android/dinamic/log/DinamicLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    return-object p0

    .line 312
    :cond_0
    iget-object v0, p1, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode;->type:Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;

    sget-object v1, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;->DinamicASTNodeTypeSerialBlock:Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;

    if-ne v0, v1, :cond_3

    .line 314
    iget-object v0, p1, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    :goto_0
    if-ge v2, v0, :cond_2

    .line 319
    iget-object p0, p1, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode;->children:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode;

    .line 321
    instance-of v1, p0, Lcom/taobao/android/dinamic/expressionv2/DinamicMethodNode;

    if-eqz v1, :cond_1

    .line 322
    nop

    nop

    invoke-virtual {p0}, Lcom/taobao/android/dinamic/expressionv2/DinamicMethodNode;->evaluateMidlle()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 325
    :cond_2
    new-array p0, v0, [Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode;

    .line 326
    iget-object p1, p1, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode;->children:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode;

    :cond_3
    return-object p0
.end method

.method public static handleEvent(Landroid/view/View;Ljava/lang/String;Lcom/taobao/android/dinamic/model/DinamicParams;)V
    .locals 2

    .line 154
    sget-boolean v0, Lcom/taobao/android/dinamic/DinamicConstant;->ISCACHE:Z

    if-eqz v0, :cond_0

    .line 155
    sget-object v0, Lcom/taobao/android/dinamic/expressionv2/ExpressionProcessor;->expressionTreeCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 159
    new-instance v0, Lcom/taobao/android/dinamic/expressionv2/DinamicTokenizer;

    invoke-direct {v0}, Lcom/taobao/android/dinamic/expressionv2/DinamicTokenizer;-><init>()V

    .line 165
    invoke-virtual {v0, p1}, Lcom/taobao/android/dinamic/expressionv2/DinamicTokenizer;->tokensWithExpr(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 169
    new-instance v1, Lcom/taobao/android/dinamic/expressionv2/DinamicASTBuilder;

    invoke-direct {v1}, Lcom/taobao/android/dinamic/expressionv2/DinamicASTBuilder;-><init>()V

    .line 170
    invoke-virtual {v1, p2}, Lcom/taobao/android/dinamic/expressionv2/DinamicASTBuilder;->setDinamicParams(Lcom/taobao/android/dinamic/model/DinamicParams;)V

    .line 171
    invoke-virtual {v1, v0}, Lcom/taobao/android/dinamic/expressionv2/DinamicASTBuilder;->parseWithTokens(Landroid/util/Pair;)Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 176
    sget-boolean v0, Lcom/taobao/android/dinamic/DinamicConstant;->ISCACHE:Z

    if-eqz v0, :cond_1

    .line 177
    sget-object v0, Lcom/taobao/android/dinamic/expressionv2/ExpressionProcessor;->expressionTreeCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :cond_1
    invoke-static {p0, p2}, Lcom/taobao/android/dinamic/expressionv2/ExpressionProcessor;->handleEvent_(Landroid/view/View;Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode;)V

    goto :goto_1

    .line 186
    :cond_2
    invoke-virtual {v0, p2}, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode;->bindData(Ljava/lang/Object;)V

    .line 187
    invoke-static {p0, v0}, Lcom/taobao/android/dinamic/expressionv2/ExpressionProcessor;->handleEvent_(Landroid/view/View;Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private static handleEvent_(Landroid/view/View;Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode;)V
    .locals 6

    if-eqz p1, :cond_2

    .line 204
    iget-object v0, p1, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode;->type:Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;

    sget-object v1, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;->DinamicASTNodeTypeMethod:Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;

    const-string v2, "Dinamic"

    if-ne v0, v1, :cond_0

    .line 208
    :try_start_0
    check-cast p1, Lcom/taobao/android/dinamic/expressionv2/DinamicMethodNode;

    invoke-virtual {p1, p0}, Lcom/taobao/android/dinamic/expressionv2/DinamicMethodNode;->handleEvent(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string/jumbo p0, "root node class cast error!"

    .line 211
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/taobao/android/dinamic/log/DinamicLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    .line 217
    :cond_0
    iget-object v0, p1, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode;->type:Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;

    sget-object v1, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;->DinamicASTNodeTypeSerialBlock:Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;

    if-ne v0, v1, :cond_2

    .line 219
    iget-object v0, p1, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 222
    iget-object v3, p1, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode;->children:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode;

    .line 223
    iget-object v4, v3, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode;->type:Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;

    sget-object v5, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;->DinamicASTNodeTypeMethod:Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode$DinamicASTNodeType;

    if-ne v4, v5, :cond_1

    .line 225
    :try_start_1
    check-cast v3, Lcom/taobao/android/dinamic/expressionv2/DinamicMethodNode;

    invoke-virtual {v3, p0}, Lcom/taobao/android/dinamic/expressionv2/DinamicMethodNode;->handleEvent(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string p0, "child node class cast error!"

    .line 227
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/taobao/android/dinamic/log/DinamicLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public static handlePreEvent(Landroid/view/View;Ljava/lang/String;Lcom/taobao/android/dinamic/model/DinamicParams;Lcom/taobao/android/dinamic/property/DinamicProperty;)V
    .locals 4

    .line 341
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/taobao/android/dinamic/expressionv2/ExpressionProcessor;->getEventArray(Landroid/view/View;Ljava/lang/String;Lcom/taobao/android/dinamic/model/DinamicParams;)[Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 342
    array-length v0, p1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 343
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 345
    aget-object v1, p1, v0

    iget-object v1, v1, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/taobao/android/dinamic/Dinamic;->getEventHandler(Ljava/lang/String;)Lcom/taobao/android/dinamic/dinamic/DinamicEventHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 346
    aget-object v2, p1, v0

    instance-of v2, v2, Lcom/taobao/android/dinamic/expressionv2/DinamicMethodNode;

    if-eqz v2, :cond_0

    .line 347
    aget-object v2, p1, v0

    check-cast v2, Lcom/taobao/android/dinamic/expressionv2/DinamicMethodNode;

    invoke-virtual {v2}, Lcom/taobao/android/dinamic/expressionv2/DinamicMethodNode;->getMiddle()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2}, Lcom/taobao/android/dinamic/model/DinamicParams;->getOriginalData()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, p0, v2, v3}, Lcom/taobao/android/dinamic/dinamic/DinamicEventHandler;->prepareBindEvent(Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 352
    :catch_0
    invoke-virtual {p2}, Lcom/taobao/android/dinamic/model/DinamicParams;->getViewResult()Lcom/taobao/android/dinamic/view/ViewResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/taobao/android/dinamic/view/ViewResult;->getDinamicError()Lcom/taobao/android/dinamic/view/DinamicError;

    move-result-object p0

    iget-object p1, p3, Lcom/taobao/android/dinamic/property/DinamicProperty;->viewIdentify:Ljava/lang/String;

    const-string p2, "eventHandlerException"

    invoke-virtual {p0, p2, p1}, Lcom/taobao/android/dinamic/view/DinamicError;->addErrorCodeWithInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static process(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamic/model/DinamicParams;)Ljava/lang/Object;
    .locals 2

    .line 86
    sget-boolean p1, Lcom/taobao/android/dinamic/DinamicConstant;->ISCACHE:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 87
    sget-object p1, Lcom/taobao/android/dinamic/expressionv2/ExpressionProcessor;->expressionTreeCache:Landroid/util/LruCache;

    invoke-virtual {p1, p0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_4

    .line 91
    new-instance p1, Lcom/taobao/android/dinamic/expressionv2/DinamicTokenizer;

    invoke-direct {p1}, Lcom/taobao/android/dinamic/expressionv2/DinamicTokenizer;-><init>()V

    .line 97
    invoke-virtual {p1, p0}, Lcom/taobao/android/dinamic/expressionv2/DinamicTokenizer;->tokensWithExpr(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 101
    new-instance v1, Lcom/taobao/android/dinamic/expressionv2/DinamicASTBuilder;

    invoke-direct {v1}, Lcom/taobao/android/dinamic/expressionv2/DinamicASTBuilder;-><init>()V

    .line 102
    invoke-virtual {v1, p2}, Lcom/taobao/android/dinamic/expressionv2/DinamicASTBuilder;->setDinamicParams(Lcom/taobao/android/dinamic/model/DinamicParams;)V

    .line 103
    invoke-virtual {v1, p1}, Lcom/taobao/android/dinamic/expressionv2/DinamicASTBuilder;->parseWithTokens(Landroid/util/Pair;)Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 106
    sget-boolean v1, Lcom/taobao/android/dinamic/DinamicConstant;->ISCACHE:Z

    if-eqz v1, :cond_1

    .line 107
    sget-object v1, Lcom/taobao/android/dinamic/expressionv2/ExpressionProcessor;->expressionTreeCache:Landroid/util/LruCache;

    invoke-virtual {v1, p0, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_1
    invoke-static {p1, p0, p2}, Lcom/taobao/android/dinamic/expressionv2/ExpressionProcessor;->computeValue(Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode;Ljava/lang/String;Lcom/taobao/android/dinamic/model/DinamicParams;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_5

    return-object p0

    :cond_2
    const-string p0, "build AST Tree error!"

    .line 113
    invoke-static {p0}, Lcom/taobao/android/dinamic/log/DinamicLog;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string/jumbo p0, "token error!"

    .line 117
    invoke-static {p0}, Lcom/taobao/android/dinamic/log/DinamicLog;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 121
    :cond_4
    invoke-virtual {p1, p2}, Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode;->bindData(Ljava/lang/Object;)V

    .line 122
    invoke-static {p1, p0, p2}, Lcom/taobao/android/dinamic/expressionv2/ExpressionProcessor;->computeValue(Lcom/taobao/android/dinamic/expressionv2/DinamicASTNode;Ljava/lang/String;Lcom/taobao/android/dinamic/model/DinamicParams;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 123
    sget-object p1, Lcom/taobao/android/dinamic/DinamicConstant;->NL:Lcom/taobao/android/dinamic/model/Null;

    if-eq p0, p1, :cond_5

    return-object p0

    :cond_5
    :goto_1
    return-object v0
.end method


# virtual methods
.method public getExpression()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/taobao/android/dinamic/expressionv2/ExpressionProcessor;->expression:Ljava/lang/String;

    return-object v0
.end method

.method public process()Ljava/lang/Object;
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/taobao/android/dinamic/expressionv2/ExpressionProcessor;->expression:Ljava/lang/String;

    iget-object v1, p0, Lcom/taobao/android/dinamic/expressionv2/ExpressionProcessor;->viewIdentify:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/android/dinamic/expressionv2/ExpressionProcessor;->dinamicParams:Lcom/taobao/android/dinamic/model/DinamicParams;

    invoke-static {v0, v1, v2}, Lcom/taobao/android/dinamic/expressionv2/ExpressionProcessor;->process(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamic/model/DinamicParams;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setExpression(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/taobao/android/dinamic/expressionv2/ExpressionProcessor;->expression:Ljava/lang/String;

    return-void
.end method
