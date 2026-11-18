.class public Lc/b/a/b/i/r;
.super Lc/b/a/b/i/i;
.source ""


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lc/b/a/b/i/i;-><init>(JLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Lc/b/a/b/k/b;
    .locals 3

    new-instance v0, Lc/b/a/b/k/b;

    invoke-direct {v0}, Lc/b/a/b/k/b;-><init>()V

    .line 1
    iget-object v1, p0, Lc/b/a/b/i/i;->b:Lorg/json/JSONObject;

    const-string v2, "payload"

    .line 2
    invoke-virtual {v0, v2, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lc/b/a/b/k/b;

    return-object v0
.end method
