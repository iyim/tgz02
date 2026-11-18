.class public Lcom/taobao/android/sku/utils/ExpressionExt;
.super Ljava/lang/Object;
.source "ExpressionExt.java"


# static fields
.field private static sPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\$subData\\[0\\]\\{[a-zA-Z()\\. _\\-\\[\\]0-9]*(?!\\$\\{[a-zA-Z()\\. \\_\\-\\[\\]0-9]*\\})[a-zA-Z()\\. \\_\\-\\[\\]0-9]*\\}"

    .line 17
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/taobao/android/sku/utils/ExpressionExt;->sPattern:Ljava/util/regex/Pattern;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static evaluate(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 8

    if-nez p0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-nez p2, :cond_2

    :cond_1
    return-object p2

    :cond_2
    const/4 v0, 0x0

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    sget-object v2, Lcom/taobao/android/sku/utils/ExpressionExt;->sPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 28
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v0, 0x1

    .line 31
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    .line 32
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    .line 35
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    const-string v6, "\\$subData\\[0\\]"

    const-string v7, "\\$"

    .line 37
    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/taobao/android/ultron/expr/Expression;->getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v3, :cond_3

    if-ne v4, v5, :cond_3

    return-object v2

    :cond_3
    if-nez v2, :cond_4

    const-string v2, ""

    goto :goto_1

    .line 45
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 46
    :goto_1
    invoke-virtual {v1, v3, v4, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    sget-object v2, Lcom/taobao/android/sku/utils/ExpressionExt;->sPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_6

    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 55
    :cond_6
    invoke-static {p0, p2}, Lcom/taobao/android/ultron/expr/ExpressionExt;->evaluate(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
