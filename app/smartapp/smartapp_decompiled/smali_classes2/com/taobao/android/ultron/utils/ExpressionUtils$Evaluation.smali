.class public Lcom/taobao/android/ultron/utils/ExpressionUtils$Evaluation;
.super Ljava/lang/Object;
.source "ExpressionUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/ultron/utils/ExpressionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Evaluation"
.end annotation


# instance fields
.field public mData:Ljava/lang/Object;

.field public mPattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/util/regex/Pattern;Ljava/lang/Object;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/taobao/android/ultron/utils/ExpressionUtils$Evaluation;->mPattern:Ljava/util/regex/Pattern;

    .line 81
    iput-object p2, p0, Lcom/taobao/android/ultron/utils/ExpressionUtils$Evaluation;->mData:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public evaluate(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/taobao/android/ultron/utils/ExpressionUtils$Evaluation;->mPattern:Ljava/util/regex/Pattern;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_2

    .line 89
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    iget-object p2, p0, Lcom/taobao/android/ultron/utils/ExpressionUtils$Evaluation;->mPattern:Ljava/util/regex/Pattern;

    invoke-virtual {p2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    .line 91
    :goto_0
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 92
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    .line 93
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 96
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p2

    .line 98
    invoke-static {p1, p2}, Lcom/taobao/android/ultron/expr/Expression;->getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-nez v1, :cond_1

    if-ne v2, v3, :cond_1

    return-object p2

    :cond_1
    if-nez p2, :cond_2

    const-string p2, ""

    goto :goto_1

    .line 104
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 105
    :goto_1
    invoke-virtual {v0, v1, v2, p2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget-object p2, p0, Lcom/taobao/android/ultron/utils/ExpressionUtils$Evaluation;->mPattern:Ljava/util/regex/Pattern;

    invoke-virtual {p2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    goto :goto_0

    .line 110
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_2
    return-object p2
.end method
