.class public Lc/e/a/g/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public A:J

.field public B:I

.field public C:I

.field public D:I

.field public E:I

.field public F:I

.field public G:Z

.field public H:Z

.field public I:Z

.field public J:Z

.field public K:I

.field public L:I

.field public M:I

.field public N:I

.field public O:I

.field public P:I

.field public Q:J

.field public R:J

.field public S:J

.field public T:Z

.field public U:Z

.field public V:Z

.field public W:Z

.field public X:I

.field public Y:Z

.field public Z:Z

.field public a:Ljava/lang/String;

.field public a0:Z

.field public b:Ljava/lang/String;

.field public b0:Z

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Ljava/lang/String;

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CrashSDK"

    iput-object v0, p0, Lc/e/a/g/b;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lc/e/a/g/b;->b:Ljava/lang/String;

    iput-object v0, p0, Lc/e/a/g/b;->c:Ljava/lang/String;

    iput-object v0, p0, Lc/e/a/g/b;->d:Ljava/lang/String;

    const-string v1, "crashsdk/tags"

    iput-object v1, p0, Lc/e/a/g/b;->e:Ljava/lang/String;

    const-string v1, "crashsdk/logs"

    iput-object v1, p0, Lc/e/a/g/b;->f:Ljava/lang/String;

    iput-object v0, p0, Lc/e/a/g/b;->g:Ljava/lang/String;

    const/16 v0, 0x14

    iput v0, p0, Lc/e/a/g/b;->h:I

    const/16 v1, 0xa

    iput v1, p0, Lc/e/a/g/b;->i:I

    const/16 v2, 0x5dc

    iput v2, p0, Lc/e/a/g/b;->j:I

    const/16 v2, 0xbb8

    iput v2, p0, Lc/e/a/g/b;->k:I

    const/16 v2, 0x1f4

    iput v2, p0, Lc/e/a/g/b;->l:I

    const/16 v2, 0x3e8

    iput v2, p0, Lc/e/a/g/b;->m:I

    const v2, 0xea60

    iput v2, p0, Lc/e/a/g/b;->n:I

    const/16 v2, 0x7d00

    iput v2, p0, Lc/e/a/g/b;->o:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lc/e/a/g/b;->p:Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Lc/e/a/g/b;->q:Z

    iput-boolean v3, p0, Lc/e/a/g/b;->r:Z

    iput-boolean v2, p0, Lc/e/a/g/b;->s:Z

    iput-boolean v2, p0, Lc/e/a/g/b;->t:Z

    iput-boolean v3, p0, Lc/e/a/g/b;->u:Z

    iput-boolean v3, p0, Lc/e/a/g/b;->v:Z

    iput-boolean v3, p0, Lc/e/a/g/b;->w:Z

    const-string v4, ".gz"

    iput-object v4, p0, Lc/e/a/g/b;->x:Ljava/lang/String;

    const/high16 v4, 0x100000

    iput v4, p0, Lc/e/a/g/b;->y:I

    const v4, 0xc8000

    iput v4, p0, Lc/e/a/g/b;->z:I

    const-wide/32 v4, 0x180000

    iput-wide v4, p0, Lc/e/a/g/b;->A:J

    const/16 v4, 0x19

    iput v4, p0, Lc/e/a/g/b;->B:I

    iput v0, p0, Lc/e/a/g/b;->C:I

    const/4 v0, 0x6

    iput v0, p0, Lc/e/a/g/b;->D:I

    const/4 v0, 0x3

    iput v0, p0, Lc/e/a/g/b;->E:I

    const/4 v4, -0x1

    iput v4, p0, Lc/e/a/g/b;->F:I

    iput-boolean v3, p0, Lc/e/a/g/b;->G:Z

    iput-boolean v2, p0, Lc/e/a/g/b;->H:Z

    iput-boolean v2, p0, Lc/e/a/g/b;->I:Z

    iput-boolean v2, p0, Lc/e/a/g/b;->J:Z

    const/16 v4, 0x32

    iput v4, p0, Lc/e/a/g/b;->K:I

    iput v0, p0, Lc/e/a/g/b;->L:I

    const/16 v0, 0xf

    iput v0, p0, Lc/e/a/g/b;->M:I

    iput v1, p0, Lc/e/a/g/b;->N:I

    const/16 v0, 0x384

    iput v0, p0, Lc/e/a/g/b;->O:I

    const/16 v0, 0x12c

    iput v0, p0, Lc/e/a/g/b;->P:I

    const-wide/32 v0, 0x300000

    iput-wide v0, p0, Lc/e/a/g/b;->Q:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc/e/a/g/b;->R:J

    const-wide/16 v0, 0x4002

    iput-wide v0, p0, Lc/e/a/g/b;->S:J

    iput-boolean v2, p0, Lc/e/a/g/b;->T:Z

    iput-boolean v2, p0, Lc/e/a/g/b;->U:Z

    iput-boolean v3, p0, Lc/e/a/g/b;->V:Z

    iput-boolean v3, p0, Lc/e/a/g/b;->W:Z

    const/4 v0, 0x2

    iput v0, p0, Lc/e/a/g/b;->X:I

    iput-boolean v2, p0, Lc/e/a/g/b;->Y:Z

    iput-boolean v2, p0, Lc/e/a/g/b;->Z:Z

    iput-boolean v3, p0, Lc/e/a/g/b;->a0:Z

    iput-boolean v2, p0, Lc/e/a/g/b;->b0:Z

    return-void
.end method

.method public constructor <init>(Lc/e/a/g/b;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CrashSDK"

    iput-object v0, p0, Lc/e/a/g/b;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lc/e/a/g/b;->b:Ljava/lang/String;

    iput-object v0, p0, Lc/e/a/g/b;->c:Ljava/lang/String;

    iput-object v0, p0, Lc/e/a/g/b;->d:Ljava/lang/String;

    const-string v1, "crashsdk/tags"

    iput-object v1, p0, Lc/e/a/g/b;->e:Ljava/lang/String;

    const-string v1, "crashsdk/logs"

    iput-object v1, p0, Lc/e/a/g/b;->f:Ljava/lang/String;

    iput-object v0, p0, Lc/e/a/g/b;->g:Ljava/lang/String;

    const/16 v0, 0x14

    iput v0, p0, Lc/e/a/g/b;->h:I

    const/16 v1, 0xa

    iput v1, p0, Lc/e/a/g/b;->i:I

    const/16 v2, 0x5dc

    iput v2, p0, Lc/e/a/g/b;->j:I

    const/16 v2, 0xbb8

    iput v2, p0, Lc/e/a/g/b;->k:I

    const/16 v2, 0x1f4

    iput v2, p0, Lc/e/a/g/b;->l:I

    const/16 v2, 0x3e8

    iput v2, p0, Lc/e/a/g/b;->m:I

    const v2, 0xea60

    iput v2, p0, Lc/e/a/g/b;->n:I

    const/16 v2, 0x7d00

    iput v2, p0, Lc/e/a/g/b;->o:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lc/e/a/g/b;->p:Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Lc/e/a/g/b;->q:Z

    iput-boolean v3, p0, Lc/e/a/g/b;->r:Z

    iput-boolean v2, p0, Lc/e/a/g/b;->s:Z

    iput-boolean v2, p0, Lc/e/a/g/b;->t:Z

    iput-boolean v3, p0, Lc/e/a/g/b;->u:Z

    iput-boolean v3, p0, Lc/e/a/g/b;->v:Z

    iput-boolean v3, p0, Lc/e/a/g/b;->w:Z

    const-string v4, ".gz"

    iput-object v4, p0, Lc/e/a/g/b;->x:Ljava/lang/String;

    const/high16 v4, 0x100000

    iput v4, p0, Lc/e/a/g/b;->y:I

    const v4, 0xc8000

    iput v4, p0, Lc/e/a/g/b;->z:I

    const-wide/32 v4, 0x180000

    iput-wide v4, p0, Lc/e/a/g/b;->A:J

    const/16 v4, 0x19

    iput v4, p0, Lc/e/a/g/b;->B:I

    iput v0, p0, Lc/e/a/g/b;->C:I

    const/4 v0, 0x6

    iput v0, p0, Lc/e/a/g/b;->D:I

    const/4 v0, 0x3

    iput v0, p0, Lc/e/a/g/b;->E:I

    const/4 v4, -0x1

    iput v4, p0, Lc/e/a/g/b;->F:I

    iput-boolean v3, p0, Lc/e/a/g/b;->G:Z

    iput-boolean v2, p0, Lc/e/a/g/b;->H:Z

    iput-boolean v2, p0, Lc/e/a/g/b;->I:Z

    iput-boolean v2, p0, Lc/e/a/g/b;->J:Z

    const/16 v4, 0x32

    iput v4, p0, Lc/e/a/g/b;->K:I

    iput v0, p0, Lc/e/a/g/b;->L:I

    const/16 v0, 0xf

    iput v0, p0, Lc/e/a/g/b;->M:I

    iput v1, p0, Lc/e/a/g/b;->N:I

    const/16 v0, 0x384

    iput v0, p0, Lc/e/a/g/b;->O:I

    const/16 v0, 0x12c

    iput v0, p0, Lc/e/a/g/b;->P:I

    const-wide/32 v0, 0x300000

    iput-wide v0, p0, Lc/e/a/g/b;->Q:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc/e/a/g/b;->R:J

    const-wide/16 v0, 0x4002

    iput-wide v0, p0, Lc/e/a/g/b;->S:J

    iput-boolean v2, p0, Lc/e/a/g/b;->T:Z

    iput-boolean v2, p0, Lc/e/a/g/b;->U:Z

    iput-boolean v3, p0, Lc/e/a/g/b;->V:Z

    iput-boolean v3, p0, Lc/e/a/g/b;->W:Z

    const/4 v0, 0x2

    iput v0, p0, Lc/e/a/g/b;->X:I

    iput-boolean v2, p0, Lc/e/a/g/b;->Y:Z

    iput-boolean v2, p0, Lc/e/a/g/b;->Z:Z

    iput-boolean v3, p0, Lc/e/a/g/b;->a0:Z

    iput-boolean v2, p0, Lc/e/a/g/b;->b0:Z

    iget-object v0, p1, Lc/e/a/g/b;->a:Ljava/lang/String;

    iput-object v0, p0, Lc/e/a/g/b;->a:Ljava/lang/String;

    iget-object v0, p1, Lc/e/a/g/b;->b:Ljava/lang/String;

    iput-object v0, p0, Lc/e/a/g/b;->b:Ljava/lang/String;

    iget-object v0, p1, Lc/e/a/g/b;->c:Ljava/lang/String;

    iput-object v0, p0, Lc/e/a/g/b;->c:Ljava/lang/String;

    iget-object v0, p1, Lc/e/a/g/b;->d:Ljava/lang/String;

    iput-object v0, p0, Lc/e/a/g/b;->d:Ljava/lang/String;

    iget-object v0, p1, Lc/e/a/g/b;->e:Ljava/lang/String;

    iput-object v0, p0, Lc/e/a/g/b;->e:Ljava/lang/String;

    iget-object v0, p1, Lc/e/a/g/b;->f:Ljava/lang/String;

    iput-object v0, p0, Lc/e/a/g/b;->f:Ljava/lang/String;

    iget-object v0, p1, Lc/e/a/g/b;->g:Ljava/lang/String;

    iput-object v0, p0, Lc/e/a/g/b;->g:Ljava/lang/String;

    iget v0, p1, Lc/e/a/g/b;->h:I

    iput v0, p0, Lc/e/a/g/b;->h:I

    iget v0, p1, Lc/e/a/g/b;->i:I

    iput v0, p0, Lc/e/a/g/b;->i:I

    iget v0, p1, Lc/e/a/g/b;->j:I

    iput v0, p0, Lc/e/a/g/b;->j:I

    iget v0, p1, Lc/e/a/g/b;->k:I

    iput v0, p0, Lc/e/a/g/b;->k:I

    iget v0, p1, Lc/e/a/g/b;->l:I

    iput v0, p0, Lc/e/a/g/b;->l:I

    iget v0, p1, Lc/e/a/g/b;->m:I

    iput v0, p0, Lc/e/a/g/b;->m:I

    iget v0, p1, Lc/e/a/g/b;->n:I

    iput v0, p0, Lc/e/a/g/b;->n:I

    iget v0, p1, Lc/e/a/g/b;->o:I

    iput v0, p0, Lc/e/a/g/b;->o:I

    iget-boolean v0, p1, Lc/e/a/g/b;->p:Z

    iput-boolean v0, p0, Lc/e/a/g/b;->p:Z

    iget-boolean v0, p1, Lc/e/a/g/b;->q:Z

    iput-boolean v0, p0, Lc/e/a/g/b;->q:Z

    iget-boolean v0, p1, Lc/e/a/g/b;->r:Z

    iput-boolean v0, p0, Lc/e/a/g/b;->r:Z

    iget-boolean v0, p1, Lc/e/a/g/b;->s:Z

    iput-boolean v0, p0, Lc/e/a/g/b;->s:Z

    iget-boolean v0, p1, Lc/e/a/g/b;->t:Z

    iput-boolean v0, p0, Lc/e/a/g/b;->t:Z

    iget-boolean v0, p1, Lc/e/a/g/b;->u:Z

    iput-boolean v0, p0, Lc/e/a/g/b;->u:Z

    iget-boolean v0, p1, Lc/e/a/g/b;->v:Z

    iput-boolean v0, p0, Lc/e/a/g/b;->v:Z

    iget-boolean v0, p1, Lc/e/a/g/b;->w:Z

    iput-boolean v0, p0, Lc/e/a/g/b;->w:Z

    iget-object v0, p1, Lc/e/a/g/b;->x:Ljava/lang/String;

    iput-object v0, p0, Lc/e/a/g/b;->x:Ljava/lang/String;

    iget v0, p1, Lc/e/a/g/b;->y:I

    iput v0, p0, Lc/e/a/g/b;->y:I

    iget v0, p1, Lc/e/a/g/b;->z:I

    iput v0, p0, Lc/e/a/g/b;->z:I

    iget-wide v0, p1, Lc/e/a/g/b;->A:J

    iput-wide v0, p0, Lc/e/a/g/b;->A:J

    iget v0, p1, Lc/e/a/g/b;->E:I

    iput v0, p0, Lc/e/a/g/b;->E:I

    iget v0, p1, Lc/e/a/g/b;->B:I

    iput v0, p0, Lc/e/a/g/b;->B:I

    iget v0, p1, Lc/e/a/g/b;->C:I

    iput v0, p0, Lc/e/a/g/b;->C:I

    iget v0, p1, Lc/e/a/g/b;->D:I

    iput v0, p0, Lc/e/a/g/b;->D:I

    iget v0, p1, Lc/e/a/g/b;->F:I

    iput v0, p0, Lc/e/a/g/b;->F:I

    iget-boolean v0, p1, Lc/e/a/g/b;->G:Z

    iput-boolean v0, p0, Lc/e/a/g/b;->G:Z

    iget-boolean v0, p1, Lc/e/a/g/b;->H:Z

    iput-boolean v0, p0, Lc/e/a/g/b;->H:Z

    iget-boolean v0, p1, Lc/e/a/g/b;->I:Z

    iput-boolean v0, p0, Lc/e/a/g/b;->I:Z

    iget-boolean v0, p1, Lc/e/a/g/b;->J:Z

    iput-boolean v0, p0, Lc/e/a/g/b;->J:Z

    iget v0, p1, Lc/e/a/g/b;->K:I

    iput v0, p0, Lc/e/a/g/b;->K:I

    iget v0, p1, Lc/e/a/g/b;->L:I

    iput v0, p0, Lc/e/a/g/b;->L:I

    iget v0, p1, Lc/e/a/g/b;->M:I

    iput v0, p0, Lc/e/a/g/b;->M:I

    iget v0, p1, Lc/e/a/g/b;->N:I

    iput v0, p0, Lc/e/a/g/b;->N:I

    iget v0, p1, Lc/e/a/g/b;->O:I

    iput v0, p0, Lc/e/a/g/b;->O:I

    iget v0, p1, Lc/e/a/g/b;->P:I

    iput v0, p0, Lc/e/a/g/b;->P:I

    iget-wide v0, p1, Lc/e/a/g/b;->Q:J

    iput-wide v0, p0, Lc/e/a/g/b;->Q:J

    iget-wide v0, p1, Lc/e/a/g/b;->R:J

    iput-wide v0, p0, Lc/e/a/g/b;->R:J

    iget-wide v0, p1, Lc/e/a/g/b;->S:J

    iput-wide v0, p0, Lc/e/a/g/b;->S:J

    iget-boolean v0, p1, Lc/e/a/g/b;->T:Z

    iput-boolean v0, p0, Lc/e/a/g/b;->T:Z

    iget-boolean v0, p1, Lc/e/a/g/b;->U:Z

    iput-boolean v0, p0, Lc/e/a/g/b;->U:Z

    iget-boolean v0, p1, Lc/e/a/g/b;->V:Z

    iput-boolean v0, p0, Lc/e/a/g/b;->V:Z

    iget-boolean v0, p1, Lc/e/a/g/b;->W:Z

    iput-boolean v0, p0, Lc/e/a/g/b;->W:Z

    iget v0, p1, Lc/e/a/g/b;->X:I

    iput v0, p0, Lc/e/a/g/b;->X:I

    iget-boolean v0, p1, Lc/e/a/g/b;->Y:Z

    iput-boolean v0, p0, Lc/e/a/g/b;->Y:Z

    iget-boolean v0, p1, Lc/e/a/g/b;->Z:Z

    iput-boolean v0, p0, Lc/e/a/g/b;->Z:Z

    iget-boolean v0, p1, Lc/e/a/g/b;->a0:Z

    iput-boolean v0, p0, Lc/e/a/g/b;->a0:Z

    iget-boolean p1, p1, Lc/e/a/g/b;->b0:Z

    iput-boolean p1, p0, Lc/e/a/g/b;->b0:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CrashSDK"

    iput-object v0, p0, Lc/e/a/g/b;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lc/e/a/g/b;->b:Ljava/lang/String;

    iput-object v0, p0, Lc/e/a/g/b;->c:Ljava/lang/String;

    iput-object v0, p0, Lc/e/a/g/b;->d:Ljava/lang/String;

    const-string v1, "crashsdk/tags"

    iput-object v1, p0, Lc/e/a/g/b;->e:Ljava/lang/String;

    const-string v1, "crashsdk/logs"

    iput-object v1, p0, Lc/e/a/g/b;->f:Ljava/lang/String;

    iput-object v0, p0, Lc/e/a/g/b;->g:Ljava/lang/String;

    const/16 v0, 0x14

    iput v0, p0, Lc/e/a/g/b;->h:I

    const/16 v1, 0xa

    iput v1, p0, Lc/e/a/g/b;->i:I

    const/16 v2, 0x5dc

    iput v2, p0, Lc/e/a/g/b;->j:I

    const/16 v2, 0xbb8

    iput v2, p0, Lc/e/a/g/b;->k:I

    const/16 v2, 0x1f4

    iput v2, p0, Lc/e/a/g/b;->l:I

    const/16 v2, 0x3e8

    iput v2, p0, Lc/e/a/g/b;->m:I

    const v2, 0xea60

    iput v2, p0, Lc/e/a/g/b;->n:I

    const/16 v2, 0x7d00

    iput v2, p0, Lc/e/a/g/b;->o:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lc/e/a/g/b;->p:Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Lc/e/a/g/b;->q:Z

    iput-boolean v3, p0, Lc/e/a/g/b;->r:Z

    iput-boolean v2, p0, Lc/e/a/g/b;->s:Z

    iput-boolean v2, p0, Lc/e/a/g/b;->t:Z

    iput-boolean v3, p0, Lc/e/a/g/b;->u:Z

    iput-boolean v3, p0, Lc/e/a/g/b;->v:Z

    iput-boolean v3, p0, Lc/e/a/g/b;->w:Z

    const-string v4, ".gz"

    iput-object v4, p0, Lc/e/a/g/b;->x:Ljava/lang/String;

    const/high16 v4, 0x100000

    iput v4, p0, Lc/e/a/g/b;->y:I

    const v4, 0xc8000

    iput v4, p0, Lc/e/a/g/b;->z:I

    const-wide/32 v4, 0x180000

    iput-wide v4, p0, Lc/e/a/g/b;->A:J

    const/16 v4, 0x19

    iput v4, p0, Lc/e/a/g/b;->B:I

    iput v0, p0, Lc/e/a/g/b;->C:I

    const/4 v0, 0x6

    iput v0, p0, Lc/e/a/g/b;->D:I

    const/4 v0, 0x3

    iput v0, p0, Lc/e/a/g/b;->E:I

    const/4 v4, -0x1

    iput v4, p0, Lc/e/a/g/b;->F:I

    iput-boolean v3, p0, Lc/e/a/g/b;->G:Z

    iput-boolean v2, p0, Lc/e/a/g/b;->H:Z

    iput-boolean v2, p0, Lc/e/a/g/b;->I:Z

    iput-boolean v2, p0, Lc/e/a/g/b;->J:Z

    const/16 v4, 0x32

    iput v4, p0, Lc/e/a/g/b;->K:I

    iput v0, p0, Lc/e/a/g/b;->L:I

    const/16 v0, 0xf

    iput v0, p0, Lc/e/a/g/b;->M:I

    iput v1, p0, Lc/e/a/g/b;->N:I

    const/16 v0, 0x384

    iput v0, p0, Lc/e/a/g/b;->O:I

    const/16 v0, 0x12c

    iput v0, p0, Lc/e/a/g/b;->P:I

    const-wide/32 v0, 0x300000

    iput-wide v0, p0, Lc/e/a/g/b;->Q:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc/e/a/g/b;->R:J

    const-wide/16 v0, 0x4002

    iput-wide v0, p0, Lc/e/a/g/b;->S:J

    iput-boolean v2, p0, Lc/e/a/g/b;->T:Z

    iput-boolean v2, p0, Lc/e/a/g/b;->U:Z

    iput-boolean v3, p0, Lc/e/a/g/b;->V:Z

    iput-boolean v3, p0, Lc/e/a/g/b;->W:Z

    const/4 v0, 0x2

    iput v0, p0, Lc/e/a/g/b;->X:I

    iput-boolean v2, p0, Lc/e/a/g/b;->Y:Z

    iput-boolean v2, p0, Lc/e/a/g/b;->Z:Z

    iput-boolean v3, p0, Lc/e/a/g/b;->a0:Z

    iput-boolean v2, p0, Lc/e/a/g/b;->b0:Z

    iput-object p1, p0, Lc/e/a/g/b;->a:Ljava/lang/String;

    return-void
.end method
