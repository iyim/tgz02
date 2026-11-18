.class public Lcom/alibaba/jsi/standard/js/JSNumberObject;
.super Lcom/alibaba/jsi/standard/js/JSObject;
.source "ProGuard"


# direct methods
.method public constructor <init>(Lcom/alibaba/jsi/standard/JSContext;D)V
    .locals 6

    const/16 v1, 0x10

    const-wide/16 v2, 0x0

    move-object v0, p1

    move-wide v4, p2

    .line 9
    invoke-static/range {v0 .. v5}, Lcom/alibaba/jsi/standard/js/Bridge;->createNative(Lcom/alibaba/jsi/standard/JSContext;IJD)J

    move-result-wide p2

    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/jsi/standard/js/JSObject;-><init>(Lcom/alibaba/jsi/standard/JSContext;J)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method constructor <init>(Lcom/alibaba/jsi/standard/JSContext;J)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/jsi/standard/js/JSObject;-><init>(Lcom/alibaba/jsi/standard/JSContext;J)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public isNumberObject()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public valueOf(Lcom/alibaba/jsi/standard/JSContext;)D
    .locals 3

    .line 23
    invoke-virtual {p0}, Lcom/alibaba/jsi/standard/js/JSNumberObject;->a()V

    .line 24
    iget-wide v0, p0, Lcom/alibaba/jsi/standard/js/JSNumberObject;->c:J

    const/16 v2, 0x12c

    invoke-static {p1, v2, v0, v1}, Lcom/alibaba/jsi/standard/js/Bridge;->cmd(Lcom/alibaba/jsi/standard/JSContext;IJ)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 26
    instance-of v0, p1, Lcom/alibaba/jsi/standard/js/JSNumber;

    if-eqz v0, :cond_0

    .line 27
    nop

    nop

    invoke-virtual {p1}, Lcom/alibaba/jsi/standard/js/JSNumber;->valueOf()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method
