.class public Lcom/taobao/android/ultron/expr/Expression;
.super Ljava/lang/Object;
.source "Expression.java"


# static fields
.field private static final DELIMITER:Ljava/lang/String; = " ${.[]}"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto :goto_1

    .line 21
    :cond_0
    new-instance v0, Ljava/util/StringTokenizer;

    const/4 v1, 0x1

    const-string v2, " ${.[]}"

    invoke-direct {v0, p1, v2, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 22
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 23
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 24
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v1, :cond_4

    .line 25
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x24

    if-ne v6, v5, :cond_2

    const/4 v3, 0x1

    move-object p1, p0

    goto :goto_0

    :cond_2
    const/16 v6, 0x20

    if-eq v6, v5, :cond_1

    const/16 v6, 0x5b

    if-eq v6, v5, :cond_1

    const/16 v6, 0x5d

    if-eq v6, v5, :cond_1

    const/16 v6, 0x7b

    if-eq v6, v5, :cond_1

    const/16 v6, 0x2e

    if-ne v6, v5, :cond_3

    goto :goto_0

    :cond_3
    const/16 v6, 0x7d

    if-ne v6, v5, :cond_4

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_1

    .line 41
    invoke-static {p1, v4}, Lcom/taobao/android/ultron/expr/ValueResolverFactory;->getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_5
    :goto_1
    return-object p1
.end method
