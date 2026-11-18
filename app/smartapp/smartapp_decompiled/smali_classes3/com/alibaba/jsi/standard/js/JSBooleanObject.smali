.class public Lcom/alibaba/jsi/standard/js/JSBooleanObject;
.super Lcom/alibaba/jsi/standard/js/JSObject;
.source "ProGuard"


# direct methods
.method constructor <init>(Lcom/alibaba/jsi/standard/JSContext;J)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/jsi/standard/js/JSObject;-><init>(Lcom/alibaba/jsi/standard/JSContext;J)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lcom/alibaba/jsi/standard/JSContext;Z)V
    .locals 2

    if-eqz p2, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const/16 p2, 0xf

    .line 9
    invoke-static {p1, p2, v0, v1}, Lcom/alibaba/jsi/standard/js/Bridge;->createNative(Lcom/alibaba/jsi/standard/JSContext;IJ)J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/jsi/standard/js/JSObject;-><init>(Lcom/alibaba/jsi/standard/JSContext;J)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public isBooleanObject()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public valueOf(Lcom/alibaba/jsi/standard/JSContext;)Z
    .locals 3

    .line 23
    invoke-virtual {p0}, Lcom/alibaba/jsi/standard/js/JSBooleanObject;->a()V

    .line 24
    iget-wide v0, p0, Lcom/alibaba/jsi/standard/js/JSBooleanObject;->c:J

    const/16 v2, 0x12d

    invoke-static {p1, v2, v0, v1}, Lcom/alibaba/jsi/standard/js/Bridge;->cmd(Lcom/alibaba/jsi/standard/JSContext;IJ)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 26
    instance-of v0, p1, Lcom/alibaba/jsi/standard/js/JSBoolean;

    if-eqz v0, :cond_0

    .line 27
    nop

    nop

    invoke-virtual {p1}, Lcom/alibaba/jsi/standard/js/JSBoolean;->valueOf()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
