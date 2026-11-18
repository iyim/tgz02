.class public Lcom/taobao/android/dinamic/expression/parser/DinamicExpressionParser;
.super Lcom/taobao/android/dinamic/expression/parser/AbsDinamicDataParser;
.source "DinamicExpressionParser.java"


# static fields
.field private static final DELIMITER:Ljava/lang/String; = " .[]"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/taobao/android/dinamic/expression/parser/AbsDinamicDataParser;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public evalWithArgs(Ljava/util/List;Lcom/taobao/android/dinamic/model/DinamicParams;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/taobao/android/dinamic/model/DinamicParams;->getOriginalData()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/taobao/android/dinamic/expression/parser/DinamicExpressionParser;->parser(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parser(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 26
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 37
    :cond_0
    new-instance v0, Ljava/util/StringTokenizer;

    const/4 v1, 0x0

    const-string v2, " .[]"

    invoke-direct {v0, p1, v2, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 39
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 40
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    .line 47
    invoke-static {p2, p1}, Lcom/taobao/android/dinamic/expression/parser/resolver/ValueResolverFactory;->getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public parser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 58
    invoke-virtual {p0, p2, p3}, Lcom/taobao/android/dinamic/expression/parser/DinamicExpressionParser;->parser(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
