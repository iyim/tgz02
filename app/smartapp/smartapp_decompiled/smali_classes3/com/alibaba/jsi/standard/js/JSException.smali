.class public Lcom/alibaba/jsi/standard/js/JSException;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/alibaba/jsi/standard/js/Deletable;


# instance fields
.field a:Lcom/alibaba/jsi/standard/JSContext;

.field b:J

.field private c:Z


# direct methods
.method constructor <init>(Lcom/alibaba/jsi/standard/JSContext;J)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/alibaba/jsi/standard/js/JSException;->a:Lcom/alibaba/jsi/standard/JSContext;

    .line 24
    iput-wide p2, p0, Lcom/alibaba/jsi/standard/js/JSException;->b:J

    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Lcom/alibaba/jsi/standard/js/JSException;->c:Z

    .line 27
    iget-object p1, p0, Lcom/alibaba/jsi/standard/js/JSException;->a:Lcom/alibaba/jsi/standard/JSContext;

    invoke-static {p1, p0}, Lcom/alibaba/jsi/standard/a;->a(Lcom/alibaba/jsi/standard/JSContext;Lcom/alibaba/jsi/standard/js/Deletable;)V

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/jsi/standard/JSContext;Ljava/lang/String;)V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/alibaba/jsi/standard/js/JSException;->a:Lcom/alibaba/jsi/standard/JSContext;

    const/4 v0, 0x1

    .line 15
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/16 p2, 0x15

    invoke-static {p1, p2, v0}, Lcom/alibaba/jsi/standard/js/Bridge;->createNative(Lcom/alibaba/jsi/standard/JSContext;I[Ljava/lang/Object;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/alibaba/jsi/standard/js/JSException;->b:J

    .line 17
    iput-boolean v1, p0, Lcom/alibaba/jsi/standard/js/JSException;->c:Z

    .line 19
    iget-object p1, p0, Lcom/alibaba/jsi/standard/js/JSException;->a:Lcom/alibaba/jsi/standard/JSContext;

    invoke-static {p1, p0}, Lcom/alibaba/jsi/standard/a;->a(Lcom/alibaba/jsi/standard/JSContext;Lcom/alibaba/jsi/standard/js/Deletable;)V

    return-void
.end method

.method private a()V
    .locals 3

    .line 42
    iget-boolean v0, p0, Lcom/alibaba/jsi/standard/js/JSException;->c:Z

    if-nez v0, :cond_0

    return-void

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JSException has been deleted: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public delete()V
    .locals 5

    .line 32
    iget-wide v0, p0, Lcom/alibaba/jsi/standard/js/JSException;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/alibaba/jsi/standard/js/JSException;->c:Z

    if-nez v4, :cond_0

    const/4 v4, 0x4

    .line 33
    invoke-static {v0, v1, v4}, Lcom/alibaba/jsi/standard/js/Bridge;->nativeDelete(JI)V

    .line 34
    iput-wide v2, p0, Lcom/alibaba/jsi/standard/js/JSException;->b:J

    .line 36
    iget-object v0, p0, Lcom/alibaba/jsi/standard/js/JSException;->a:Lcom/alibaba/jsi/standard/JSContext;

    invoke-static {v0, p0}, Lcom/alibaba/jsi/standard/a;->b(Lcom/alibaba/jsi/standard/JSContext;Lcom/alibaba/jsi/standard/js/Deletable;)V

    :cond_0
    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/alibaba/jsi/standard/js/JSException;->c:Z

    return-void
.end method

.method public getMessage(Lcom/alibaba/jsi/standard/JSContext;)Ljava/lang/String;
    .locals 3

    .line 75
    invoke-direct {p0}, Lcom/alibaba/jsi/standard/js/JSException;->a()V

    .line 76
    iget-wide v0, p0, Lcom/alibaba/jsi/standard/js/JSException;->b:J

    const/16 v2, 0x25a

    invoke-static {p1, v2, v0, v1}, Lcom/alibaba/jsi/standard/js/Bridge;->cmd(Lcom/alibaba/jsi/standard/JSContext;IJ)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 78
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 79
    nop

    nop

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getName(Lcom/alibaba/jsi/standard/JSContext;)Ljava/lang/String;
    .locals 3

    .line 65
    invoke-direct {p0}, Lcom/alibaba/jsi/standard/js/JSException;->a()V

    .line 66
    iget-wide v0, p0, Lcom/alibaba/jsi/standard/js/JSException;->b:J

    const/16 v2, 0x259

    invoke-static {p1, v2, v0, v1}, Lcom/alibaba/jsi/standard/js/Bridge;->cmd(Lcom/alibaba/jsi/standard/JSContext;IJ)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 68
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 69
    nop

    nop

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getStack(Lcom/alibaba/jsi/standard/JSContext;)Ljava/lang/String;
    .locals 3

    .line 85
    invoke-direct {p0}, Lcom/alibaba/jsi/standard/js/JSException;->a()V

    .line 86
    iget-wide v0, p0, Lcom/alibaba/jsi/standard/js/JSException;->b:J

    const/16 v2, 0x25b

    invoke-static {p1, v2, v0, v1}, Lcom/alibaba/jsi/standard/js/Bridge;->cmd(Lcom/alibaba/jsi/standard/JSContext;IJ)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 88
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 89
    nop

    nop

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getValue(Lcom/alibaba/jsi/standard/JSContext;)Lcom/alibaba/jsi/standard/js/JSValue;
    .locals 3

    .line 95
    invoke-direct {p0}, Lcom/alibaba/jsi/standard/js/JSException;->a()V

    .line 96
    iget-wide v0, p0, Lcom/alibaba/jsi/standard/js/JSException;->b:J

    const/16 v2, 0x25c

    invoke-static {p1, v2, v0, v1}, Lcom/alibaba/jsi/standard/js/Bridge;->cmd(Lcom/alibaba/jsi/standard/JSContext;IJ)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 98
    instance-of v0, p1, Lcom/alibaba/jsi/standard/js/JSValue;

    if-eqz v0, :cond_0

    .line 99
    nop

    nop

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public toString(Lcom/alibaba/jsi/standard/JSContext;)Ljava/lang/String;
    .locals 3

    .line 55
    invoke-direct {p0}, Lcom/alibaba/jsi/standard/js/JSException;->a()V

    .line 56
    iget-wide v0, p0, Lcom/alibaba/jsi/standard/js/JSException;->b:J

    const/16 v2, 0x258

    invoke-static {p1, v2, v0, v1}, Lcom/alibaba/jsi/standard/js/Bridge;->cmd(Lcom/alibaba/jsi/standard/JSContext;IJ)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 58
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 59
    nop

    nop

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
