.class public Lcom/alibaba/jsi/standard/js/JSMap;
.super Lcom/alibaba/jsi/standard/js/JSObject;
.source "ProGuard"


# direct methods
.method public constructor <init>(Lcom/alibaba/jsi/standard/JSContext;)V
    .locals 2

    const/16 v0, 0x9

    .line 9
    invoke-static {p1, v0}, Lcom/alibaba/jsi/standard/js/Bridge;->createNative(Lcom/alibaba/jsi/standard/JSContext;I)J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/jsi/standard/js/JSObject;-><init>(Lcom/alibaba/jsi/standard/JSContext;J)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method constructor <init>(Lcom/alibaba/jsi/standard/JSContext;J)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/jsi/standard/js/JSObject;-><init>(Lcom/alibaba/jsi/standard/JSContext;J)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public asArray(Lcom/alibaba/jsi/standard/JSContext;)Lcom/alibaba/jsi/standard/js/JSArray;
    .locals 3

    .line 71
    invoke-virtual {p0}, Lcom/alibaba/jsi/standard/js/JSMap;->a()V

    .line 72
    iget-wide v0, p0, Lcom/alibaba/jsi/standard/js/JSMap;->c:J

    const/16 v2, 0xec

    invoke-static {p1, v2, v0, v1}, Lcom/alibaba/jsi/standard/js/Bridge;->cmd(Lcom/alibaba/jsi/standard/JSContext;IJ)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 73
    instance-of v0, p1, Lcom/alibaba/jsi/standard/js/JSArray;

    if-eqz v0, :cond_0

    .line 74
    nop

    nop

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public clear(Lcom/alibaba/jsi/standard/JSContext;)V
    .locals 3

    .line 31
    invoke-virtual {p0}, Lcom/alibaba/jsi/standard/js/JSMap;->a()V

    .line 32
    iget-wide v0, p0, Lcom/alibaba/jsi/standard/js/JSMap;->c:J

    const/16 v2, 0xe7

    invoke-static {p1, v2, v0, v1}, Lcom/alibaba/jsi/standard/js/Bridge;->cmd(Lcom/alibaba/jsi/standard/JSContext;IJ)Ljava/lang/Object;

    return-void
.end method

.method public getSize(Lcom/alibaba/jsi/standard/JSContext;)I
    .locals 3

    .line 22
    invoke-virtual {p0}, Lcom/alibaba/jsi/standard/js/JSMap;->a()V

    .line 23
    iget-wide v0, p0, Lcom/alibaba/jsi/standard/js/JSMap;->c:J

    const/16 v2, 0xe6

    invoke-static {p1, v2, v0, v1}, Lcom/alibaba/jsi/standard/js/Bridge;->cmd(Lcom/alibaba/jsi/standard/JSContext;IJ)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 24
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 25
    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getValue(Lcom/alibaba/jsi/standard/JSContext;Lcom/alibaba/jsi/standard/js/JSValue;)Lcom/alibaba/jsi/standard/js/JSValue;
    .locals 4

    .line 36
    invoke-virtual {p0}, Lcom/alibaba/jsi/standard/js/JSMap;->a()V

    .line 37
    iget-wide v0, p0, Lcom/alibaba/jsi/standard/js/JSMap;->c:J

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/16 p2, 0xe8

    invoke-static {p1, p2, v0, v1, v2}, Lcom/alibaba/jsi/standard/js/Bridge;->cmd(Lcom/alibaba/jsi/standard/JSContext;IJ[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 39
    instance-of p2, p1, Lcom/alibaba/jsi/standard/js/JSValue;

    if-eqz p2, :cond_0

    .line 40
    nop

    nop

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public hasValue(Lcom/alibaba/jsi/standard/JSContext;Lcom/alibaba/jsi/standard/js/JSValue;)Z
    .locals 5

    .line 53
    invoke-virtual {p0}, Lcom/alibaba/jsi/standard/js/JSMap;->a()V

    .line 54
    iget-wide v0, p0, Lcom/alibaba/jsi/standard/js/JSMap;->c:J

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/16 p2, 0xea

    invoke-static {p1, p2, v0, v1, v3}, Lcom/alibaba/jsi/standard/js/Bridge;->cmd(Lcom/alibaba/jsi/standard/JSContext;IJ[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return v2

    :cond_0
    return v4
.end method

.method public isMap()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public removeValue(Lcom/alibaba/jsi/standard/JSContext;Lcom/alibaba/jsi/standard/js/JSValue;)Z
    .locals 5

    .line 60
    invoke-virtual {p0}, Lcom/alibaba/jsi/standard/js/JSMap;->a()V

    .line 61
    iget-wide v0, p0, Lcom/alibaba/jsi/standard/js/JSMap;->c:J

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/16 p2, 0xeb

    invoke-static {p1, p2, v0, v1, v3}, Lcom/alibaba/jsi/standard/js/Bridge;->cmd(Lcom/alibaba/jsi/standard/JSContext;IJ[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return v2

    :cond_0
    return v4
.end method

.method public setValue(Lcom/alibaba/jsi/standard/JSContext;Lcom/alibaba/jsi/standard/js/JSValue;Lcom/alibaba/jsi/standard/js/JSValue;)Z
    .locals 4

    .line 46
    invoke-virtual {p0}, Lcom/alibaba/jsi/standard/js/JSMap;->a()V

    .line 47
    iget-wide v0, p0, Lcom/alibaba/jsi/standard/js/JSMap;->c:J

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 p2, 0x1

    aput-object p3, v2, p2

    const/16 p3, 0xe9

    invoke-static {p1, p3, v0, v1, v2}, Lcom/alibaba/jsi/standard/js/Bridge;->cmd(Lcom/alibaba/jsi/standard/JSContext;IJ[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return p2

    :cond_0
    return v3
.end method
