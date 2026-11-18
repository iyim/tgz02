.class public Lc/b/a/b/j/a/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/b/j/a/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/b/j/a/b$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lc/b/a/b/j/a/b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc/b/a/b/j/a/b;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(J)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/a/b/j/a/b;->a:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/a/b/j/a/b$a;

    iget-object p1, p1, Lc/b/a/b/j/a/b$a;->a:Ljava/lang/String;

    return-object p1
.end method

.method public a(Ljava/lang/String;IJJJJIIIIIIIII)V
    .locals 4

    new-instance v0, Lc/b/a/b/j/a/b$a;

    invoke-direct {v0}, Lc/b/a/b/j/a/b$a;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lc/b/a/b/j/a/b$a;->a:Ljava/lang/String;

    move v1, p2

    iput v1, v0, Lc/b/a/b/j/a/b$a;->b:I

    move-wide v1, p7

    iput-wide v1, v0, Lc/b/a/b/j/a/b$a;->c:J

    move-wide v1, p9

    iput-wide v1, v0, Lc/b/a/b/j/a/b$a;->d:J

    move v1, p11

    iput v1, v0, Lc/b/a/b/j/a/b$a;->e:I

    move/from16 v1, p12

    iput v1, v0, Lc/b/a/b/j/a/b$a;->f:I

    move/from16 v1, p13

    iput v1, v0, Lc/b/a/b/j/a/b$a;->g:I

    move/from16 v1, p14

    iput v1, v0, Lc/b/a/b/j/a/b$a;->h:I

    move/from16 v1, p15

    iput v1, v0, Lc/b/a/b/j/a/b$a;->i:I

    move/from16 v1, p16

    iput v1, v0, Lc/b/a/b/j/a/b$a;->j:I

    move/from16 v1, p17

    iput v1, v0, Lc/b/a/b/j/a/b$a;->k:I

    move/from16 v1, p18

    iput v1, v0, Lc/b/a/b/j/a/b$a;->m:I

    move/from16 v1, p19

    iput v1, v0, Lc/b/a/b/j/a/b$a;->l:I

    move-object v1, p0

    iget-object v2, v1, Lc/b/a/b/j/a/b;->a:Ljava/util/Map;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(J)J
    .locals 1

    iget-object v0, p0, Lc/b/a/b/j/a/b;->a:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/a/b/j/a/b$a;

    iget-wide p1, p1, Lc/b/a/b/j/a/b$a;->c:J

    return-wide p1
.end method
