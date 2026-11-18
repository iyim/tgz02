.class public Lcom/taobao/android/dinamic/expression/DinamicExpression;
.super Ljava/lang/Object;
.source "DinamicExpression.java"


# static fields
.field public static final currentVersion:Ljava/lang/String; = "2.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static checkParserVersion(Lcom/taobao/android/dinamic/model/DinamicParams;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/taobao/android/dinamic/model/DinamicParams;->getViewResult()Lcom/taobao/android/dinamic/view/ViewResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/taobao/android/dinamic/view/ViewResult;->getDinamicTemplate()Lcom/taobao/android/dinamic/tempate/DinamicTemplate;

    move-result-object p0

    invoke-virtual {p0}, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->getCompilerVersion()Ljava/lang/String;

    move-result-object p0

    const-string v0, "2.0"

    .line 177
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getValue(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamic/model/DinamicParams;)Ljava/lang/Object;
    .locals 11

    const/4 v0, 0x0

    if-eqz p2, :cond_e

    .line 24
    invoke-virtual {p2}, Lcom/taobao/android/dinamic/model/DinamicParams;->getOriginalData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_e

    if-nez p0, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string v1, "@"

    .line 29
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 30
    invoke-static {p0, p1, p2}, Lcom/taobao/android/dinamic/expressionv2/ExpressionProcessor;->process(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamic/model/DinamicParams;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 34
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 40
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 41
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x0

    move-object v7, v0

    move-object v5, v1

    move-object v6, v2

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, v7

    const/4 v0, 0x0

    .line 42
    :goto_0
    array-length v8, p0

    if-ge v0, v8, :cond_d

    .line 43
    aget-char v8, p0, v0

    const/16 v9, 0x24

    const/4 v10, 0x1

    if-ne v9, v8, :cond_2

    .line 47
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 48
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move-object v5, v2

    move-object v6, v4

    const/4 v2, 0x1

    :goto_1
    const/4 v4, 0x0

    goto/16 :goto_3

    :cond_2
    const/16 v9, 0x7b

    if-ne v9, v8, :cond_4

    if-eqz v2, :cond_4

    .line 54
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 55
    invoke-static {v2}, Lcom/taobao/android/dinamic/expression/parser/DinamicDataParserFactory;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, v2

    const/4 v2, 0x0

    const/4 v4, 0x1

    goto/16 :goto_3

    :cond_3
    move-object v7, v2

    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_4
    const/16 v9, 0x7d

    if-ne v9, v8, :cond_a

    if-eqz v4, :cond_a

    .line 64
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 66
    invoke-virtual {p2}, Lcom/taobao/android/dinamic/model/DinamicParams;->getOriginalData()Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    .line 68
    :cond_5
    invoke-static {v7}, Lcom/taobao/android/dinamic/expression/parser/DinamicDataParserFactory;->getParser(Ljava/lang/String;)Lcom/taobao/android/dinamic/expression/parser/DinamicDataParser;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 71
    :try_start_0
    invoke-interface {v4, v2, p2}, Lcom/taobao/android/dinamic/expression/parser/DinamicDataParser;->parser(Ljava/lang/String;Lcom/taobao/android/dinamic/model/DinamicParams;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 73
    invoke-static {}, Lcom/taobao/android/dinamic/Dinamic;->isDebugable()Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v8, 0x2

    .line 74
    new-array v8, v8, [Ljava/lang/String;

    const-string v9, "parse express failed, parser="

    aput-object v9, v8, v3

    .line 75
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v10

    const-string v4, "DinamicExpresstion"

    .line 74
    invoke-static {v4, v2, v8}, Lcom/taobao/android/dinamic/log/DinamicLog;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V

    .line 78
    :cond_6
    invoke-virtual {p2}, Lcom/taobao/android/dinamic/model/DinamicParams;->getViewResult()Lcom/taobao/android/dinamic/view/ViewResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/android/dinamic/view/ViewResult;->getDinamicError()Lcom/taobao/android/dinamic/view/DinamicError;

    move-result-object v2

    const-string v4, "parserException"

    invoke-virtual {v2, v4, p1}, Lcom/taobao/android/dinamic/view/DinamicError;->addErrorCodeWithInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 83
    :cond_7
    invoke-virtual {p2}, Lcom/taobao/android/dinamic/model/DinamicParams;->getViewResult()Lcom/taobao/android/dinamic/view/ViewResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/android/dinamic/view/ViewResult;->getDinamicError()Lcom/taobao/android/dinamic/view/DinamicError;

    move-result-object v2

    const-string v4, "parserNotFound"

    invoke-virtual {v2, v4, p1}, Lcom/taobao/android/dinamic/view/DinamicError;->addErrorCodeWithInfo(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    if-eqz v1, :cond_9

    .line 99
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 100
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    return-object v1

    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_a
    if-eqz v2, :cond_b

    .line 114
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_b
    if-eqz v4, :cond_c

    .line 119
    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_c
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_d
    return-object v1

    :cond_e
    :goto_4
    return-object v0
.end method
