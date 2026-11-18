.class public Lcom/rich/czlylibary/a/b;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:[Ljava/lang/String;

.field public d:Z

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/rich/czlylibary/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/rich/czlylibary/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rich/czlylibary/a/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/rich/czlylibary/a/b;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/rich/czlylibary/a/b;->d:Z

    iput-boolean p4, p0, Lcom/rich/czlylibary/a/b;->e:Z

    iput-boolean p5, p0, Lcom/rich/czlylibary/a/b;->f:Z

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rich/czlylibary/a/b;->c:[Ljava/lang/String;

    return-void
.end method
