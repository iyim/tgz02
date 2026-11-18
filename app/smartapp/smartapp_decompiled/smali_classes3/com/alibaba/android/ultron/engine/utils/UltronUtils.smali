.class public Lcom/alibaba/android/ultron/engine/utils/UltronUtils;
.super Ljava/lang/Object;
.source "UltronUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static generateComponentSymbol(Lcom/alibaba/android/ultron/engine/model/TemplateComponent;)Ljava/lang/String;
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/model/TemplateComponent;->id:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 18
    invoke-static {}, Lcom/alibaba/android/ultron/engine/utils/RandomUtils;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ultron/engine/model/TemplateComponent;->id:Ljava/lang/Long;

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alibaba/android/ultron/engine/model/TemplateComponent;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/alibaba/android/ultron/engine/model/TemplateComponent;->id:Ljava/lang/Long;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateComponentSymbol(Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;)Ljava/lang/String;
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->id:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    :cond_0
    invoke-static {}, Lcom/alibaba/android/ultron/engine/utils/RandomUtils;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->id:Ljava/lang/String;

    .line 28
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->id:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isMeetCondition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1

    .line 32
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 35
    :cond_0
    invoke-static {p2, p1}, Lcom/taobao/android/ultron/expr/ExpressionExt;->evaluate(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p0, 0x0

    return p0

    .line 39
    :cond_1
    invoke-static {p0}, Lcom/alibaba/android/ultron/engine/utils/ELEvaluator;->getInstance(Landroid/content/Context;)Lcom/alibaba/android/ultron/engine/utils/ELEvaluator;

    move-result-object p0

    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/android/ultron/engine/utils/ELEvaluator;->isConditionMeet(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
