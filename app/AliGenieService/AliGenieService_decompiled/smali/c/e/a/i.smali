.class public Lc/e/a/i;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Lc/e/a/g/b;

.field public static b:Lc/e/a/g/c;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static final g:Ljava/lang/Object;

.field public static final synthetic h:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lc/e/a/i;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lc/e/a/i;->h:Z

    const/4 v0, 0x0

    sput-object v0, Lc/e/a/i;->a:Lc/e/a/g/b;

    sput-object v0, Lc/e/a/i;->b:Lc/e/a/g/c;

    sput-object v0, Lc/e/a/i;->c:Ljava/lang/String;

    sput-object v0, Lc/e/a/i;->d:Ljava/lang/String;

    sput-object v0, Lc/e/a/i;->e:Ljava/lang/String;

    sput-object v0, Lc/e/a/i;->f:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc/e/a/i;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lc/e/a/g/b;)I
    .locals 9

    sget-object v0, Lc/e/a/i;->g:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    goto/16 :goto_4

    :cond_0
    :try_start_0
    invoke-static {p0}, Lc/e/a/i;->b(Lc/e/a/g/b;)V

    sget-object v2, Lc/e/a/i;->a:Lc/e/a/g/b;

    if-nez v2, :cond_1

    new-instance v2, Lc/e/a/g/b;

    invoke-direct {v2}, Lc/e/a/g/b;-><init>()V

    sput-object v2, Lc/e/a/i;->a:Lc/e/a/g/b;

    :cond_1
    sget-object v2, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-object v3, p0, Lc/e/a/g/b;->a:Ljava/lang/String;

    iget-object v4, v2, Lc/e/a/g/b;->a:Ljava/lang/String;

    invoke-static {v3, v4}, Lc/e/a/i;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_3

    iget-object v3, p0, Lc/e/a/g/b;->a:Ljava/lang/String;

    iput-object v3, v2, Lc/e/a/g/b;->a:Ljava/lang/String;

    sget-boolean v3, Lc/e/a/c;->r:Z

    if-eqz v3, :cond_2

    const/16 v3, 0x66

    iget-object v5, v2, Lc/e/a/g/b;->a:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    :cond_2
    move v3, v4

    goto :goto_0

    :cond_3
    move v3, v1

    :goto_0
    move v5, v3

    iget-object v6, p0, Lc/e/a/g/b;->b:Ljava/lang/String;

    iget-object v7, v2, Lc/e/a/g/b;->b:Ljava/lang/String;

    invoke-static {v6, v7}, Lc/e/a/i;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lc/e/a/g/b;->b:Ljava/lang/String;

    iput-object v6, v2, Lc/e/a/g/b;->b:Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1

    :cond_4
    iget-object v6, p0, Lc/e/a/g/b;->c:Ljava/lang/String;

    iget-object v7, v2, Lc/e/a/g/b;->c:Ljava/lang/String;

    invoke-static {v6, v7}, Lc/e/a/i;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v5, p0, Lc/e/a/g/b;->c:Ljava/lang/String;

    iput-object v5, v2, Lc/e/a/g/b;->c:Ljava/lang/String;

    sget-boolean v5, Lc/e/a/c;->r:Z

    if-eqz v5, :cond_5

    const/16 v5, 0x64

    iget-object v6, v2, Lc/e/a/g/b;->c:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    :cond_5
    add-int/lit8 v3, v3, 0x1

    move v5, v4

    :cond_6
    iget-object v6, p0, Lc/e/a/g/b;->d:Ljava/lang/String;

    iget-object v7, v2, Lc/e/a/g/b;->d:Ljava/lang/String;

    invoke-static {v6, v7}, Lc/e/a/i;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v5, p0, Lc/e/a/g/b;->d:Ljava/lang/String;

    iput-object v5, v2, Lc/e/a/g/b;->d:Ljava/lang/String;

    sget-boolean v5, Lc/e/a/c;->r:Z

    if-eqz v5, :cond_7

    const/16 v5, 0x65

    iget-object v6, v2, Lc/e/a/g/b;->d:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    :cond_7
    add-int/lit8 v3, v3, 0x1

    move v5, v4

    :cond_8
    const/4 v6, 0x0

    if-eqz v5, :cond_9

    .line 4
    sput-object v6, Lc/e/a/f;->h:Ljava/lang/String;

    .line 5
    sget-boolean v5, Lc/e/a/c;->r:Z

    if-eqz v5, :cond_9

    const/4 v5, 0x2

    invoke-static {v5}, Lcom/uc/crashsdk/JNIBridge;->cmd(I)J

    :cond_9
    iget-boolean v5, v2, Lc/e/a/g/b;->Y:Z

    iget-boolean v7, p0, Lc/e/a/g/b;->Y:Z

    if-eq v5, v7, :cond_b

    iput-boolean v7, v2, Lc/e/a/g/b;->Y:Z

    sget-boolean v5, Lc/e/a/c;->r:Z

    if-eqz v5, :cond_a

    const/16 v5, 0xb

    iget-boolean v7, v2, Lc/e/a/g/b;->Y:Z

    invoke-static {v5, v7}, Lcom/uc/crashsdk/JNIBridge;->set(IZ)J

    :cond_a
    add-int/lit8 v3, v3, 0x1

    :cond_b
    iget-boolean v5, v2, Lc/e/a/g/b;->Z:Z

    iget-boolean v7, p0, Lc/e/a/g/b;->Z:Z

    if-eq v5, v7, :cond_d

    iput-boolean v7, v2, Lc/e/a/g/b;->Z:Z

    sget-boolean v5, Lc/e/a/c;->r:Z

    if-eqz v5, :cond_c

    const/16 v5, 0x12

    iget-boolean v7, v2, Lc/e/a/g/b;->Z:Z

    invoke-static {v5, v7}, Lcom/uc/crashsdk/JNIBridge;->set(IZ)J

    :cond_c
    add-int/lit8 v3, v3, 0x1

    :cond_d
    iget-boolean v5, v2, Lc/e/a/g/b;->p:Z

    iget-boolean v7, p0, Lc/e/a/g/b;->p:Z

    if-eq v5, v7, :cond_f

    iput-boolean v7, v2, Lc/e/a/g/b;->p:Z

    sget-boolean v5, Lc/e/a/c;->r:Z

    if-eqz v5, :cond_e

    const/16 v5, 0xc

    iget-boolean v7, v2, Lc/e/a/g/b;->p:Z

    invoke-static {v5, v7}, Lcom/uc/crashsdk/JNIBridge;->set(IZ)J

    :cond_e
    add-int/lit8 v3, v3, 0x1

    :cond_f
    iget-boolean v5, v2, Lc/e/a/g/b;->t:Z

    iget-boolean v7, p0, Lc/e/a/g/b;->t:Z

    if-eq v5, v7, :cond_11

    iput-boolean v7, v2, Lc/e/a/g/b;->t:Z

    sget-boolean v5, Lc/e/a/c;->r:Z

    if-eqz v5, :cond_10

    const/16 v5, 0x15

    iget-boolean v7, v2, Lc/e/a/g/b;->t:Z

    invoke-static {v5, v7}, Lcom/uc/crashsdk/JNIBridge;->set(IZ)J

    :cond_10
    add-int/lit8 v3, v3, 0x1

    :cond_11
    iget v5, v2, Lc/e/a/g/b;->F:I

    iget v7, p0, Lc/e/a/g/b;->F:I

    if-eq v5, v7, :cond_14

    iput v7, v2, Lc/e/a/g/b;->F:I

    sget-boolean v5, Lc/e/a/c;->r:Z

    if-eqz v5, :cond_12

    const/16 v5, 0xd

    iget v7, v2, Lc/e/a/g/b;->F:I

    int-to-long v7, v7

    invoke-static {v5, v7, v8}, Lcom/uc/crashsdk/JNIBridge;->set(IJ)J

    :cond_12
    iget v5, v2, Lc/e/a/g/b;->F:I

    if-ltz v5, :cond_13

    invoke-static {}, Lc/e/a/c;->f()V

    :cond_13
    add-int/lit8 v3, v3, 0x1

    :cond_14
    iget v5, v2, Lc/e/a/g/b;->h:I

    iget v7, p0, Lc/e/a/g/b;->h:I

    if-eq v5, v7, :cond_16

    iput v7, v2, Lc/e/a/g/b;->h:I

    sget-boolean v5, Lc/e/a/c;->r:Z

    if-eqz v5, :cond_15

    const/16 v5, 0xe

    iget v7, v2, Lc/e/a/g/b;->h:I

    int-to-long v7, v7

    invoke-static {v5, v7, v8}, Lcom/uc/crashsdk/JNIBridge;->set(IJ)J

    :cond_15
    add-int/lit8 v3, v3, 0x1

    :cond_16
    iget v5, v2, Lc/e/a/g/b;->k:I

    iget v7, p0, Lc/e/a/g/b;->k:I

    if-eq v5, v7, :cond_18

    iput v7, v2, Lc/e/a/g/b;->k:I

    sget-boolean v5, Lc/e/a/c;->r:Z

    if-eqz v5, :cond_17

    const/16 v5, 0xf

    iget v7, v2, Lc/e/a/g/b;->k:I

    int-to-long v7, v7

    invoke-static {v5, v7, v8}, Lcom/uc/crashsdk/JNIBridge;->set(IJ)J

    :cond_17
    add-int/lit8 v3, v3, 0x1

    :cond_18
    iget v5, v2, Lc/e/a/g/b;->j:I

    iget v7, p0, Lc/e/a/g/b;->j:I

    if-eq v5, v7, :cond_19

    iput v7, v2, Lc/e/a/g/b;->j:I

    add-int/lit8 v3, v3, 0x1

    :cond_19
    iget v5, v2, Lc/e/a/g/b;->l:I

    iget v7, p0, Lc/e/a/g/b;->l:I

    if-eq v5, v7, :cond_1b

    iput v7, v2, Lc/e/a/g/b;->l:I

    sget-boolean v5, Lc/e/a/c;->r:Z

    if-eqz v5, :cond_1a

    const/16 v5, 0x10

    iget v7, v2, Lc/e/a/g/b;->l:I

    int-to-long v7, v7

    invoke-static {v5, v7, v8}, Lcom/uc/crashsdk/JNIBridge;->set(IJ)J

    :cond_1a
    add-int/lit8 v3, v3, 0x1

    :cond_1b
    iget v5, v2, Lc/e/a/g/b;->m:I

    iget v7, p0, Lc/e/a/g/b;->m:I

    if-eq v5, v7, :cond_1d

    iput v7, v2, Lc/e/a/g/b;->m:I

    sget-boolean v5, Lc/e/a/c;->r:Z

    if-eqz v5, :cond_1c

    const/16 v5, 0x1f

    iget v7, v2, Lc/e/a/g/b;->m:I

    int-to-long v7, v7

    invoke-static {v5, v7, v8}, Lcom/uc/crashsdk/JNIBridge;->set(IJ)J

    :cond_1c
    add-int/lit8 v3, v3, 0x1

    :cond_1d
    iget-boolean v5, v2, Lc/e/a/g/b;->w:Z

    iget-boolean v7, p0, Lc/e/a/g/b;->w:Z

    if-eq v5, v7, :cond_1e

    iput-boolean v7, v2, Lc/e/a/g/b;->w:Z

    add-int/lit8 v3, v3, 0x1

    move v5, v4

    goto :goto_1

    :cond_1e
    move v5, v1

    :goto_1
    iget-object v7, p0, Lc/e/a/g/b;->x:Ljava/lang/String;

    iget-object v8, v2, Lc/e/a/g/b;->x:Ljava/lang/String;

    invoke-static {v7, v8}, Lc/e/a/i;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1f

    iget-object v5, p0, Lc/e/a/g/b;->x:Ljava/lang/String;

    iput-object v5, v2, Lc/e/a/g/b;->x:Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1f
    move v4, v5

    :goto_2
    if-eqz v4, :cond_21

    sget-boolean v4, Lc/e/a/c;->r:Z

    if-eqz v4, :cond_21

    const/4 v4, 0x3

    iget-boolean v5, v2, Lc/e/a/g/b;->w:Z

    if-eqz v5, :cond_20

    const-wide/16 v7, 0x1

    goto :goto_3

    :cond_20
    const-wide/16 v7, 0x0

    :goto_3
    iget-object v5, v2, Lc/e/a/g/b;->x:Ljava/lang/String;

    invoke-static {v4, v7, v8, v5, v6}, Lcom/uc/crashsdk/JNIBridge;->nativeSet(IJLjava/lang/String;[Ljava/lang/Object;)J

    :cond_21
    iget v4, v2, Lc/e/a/g/b;->y:I

    iget v5, p0, Lc/e/a/g/b;->y:I

    if-eq v4, v5, :cond_23

    iput v5, v2, Lc/e/a/g/b;->y:I

    sget-boolean v4, Lc/e/a/c;->r:Z

    if-eqz v4, :cond_22

    const/4 v4, 0x4

    iget v5, v2, Lc/e/a/g/b;->y:I

    int-to-long v5, v5

    invoke-static {v4, v5, v6}, Lcom/uc/crashsdk/JNIBridge;->set(IJ)J

    :cond_22
    add-int/lit8 v3, v3, 0x1

    :cond_23
    iget-boolean v4, v2, Lc/e/a/g/b;->a0:Z

    iget-boolean v5, p0, Lc/e/a/g/b;->a0:Z

    if-eq v4, v5, :cond_24

    iput-boolean v5, v2, Lc/e/a/g/b;->a0:Z

    add-int/lit8 v3, v3, 0x1

    :cond_24
    iget-boolean v4, v2, Lc/e/a/g/b;->q:Z

    iget-boolean v5, p0, Lc/e/a/g/b;->q:Z

    if-eq v4, v5, :cond_25

    iput-boolean v5, v2, Lc/e/a/g/b;->q:Z

    add-int/lit8 v3, v3, 0x1

    :cond_25
    iget-boolean v4, v2, Lc/e/a/g/b;->r:Z

    iget-boolean v5, p0, Lc/e/a/g/b;->r:Z

    if-eq v4, v5, :cond_26

    iput-boolean v5, v2, Lc/e/a/g/b;->r:Z

    add-int/lit8 v3, v3, 0x1

    :cond_26
    iget v4, v2, Lc/e/a/g/b;->i:I

    iget v5, p0, Lc/e/a/g/b;->i:I

    if-eq v4, v5, :cond_27

    iput v5, v2, Lc/e/a/g/b;->i:I

    add-int/lit8 v3, v3, 0x1

    :cond_27
    iget-boolean v4, v2, Lc/e/a/g/b;->s:Z

    iget-boolean v5, p0, Lc/e/a/g/b;->s:Z

    if-eq v4, v5, :cond_28

    iput-boolean v5, v2, Lc/e/a/g/b;->s:Z

    add-int/lit8 v3, v3, 0x1

    :cond_28
    iget v4, v2, Lc/e/a/g/b;->z:I

    iget v5, p0, Lc/e/a/g/b;->z:I

    if-eq v4, v5, :cond_29

    iput v5, v2, Lc/e/a/g/b;->z:I

    add-int/lit8 v3, v3, 0x1

    :cond_29
    iget-wide v4, v2, Lc/e/a/g/b;->A:J

    iget-wide v6, p0, Lc/e/a/g/b;->A:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2a

    iput-wide v6, v2, Lc/e/a/g/b;->A:J

    add-int/lit8 v3, v3, 0x1

    :cond_2a
    iget v4, v2, Lc/e/a/g/b;->B:I

    iget v5, p0, Lc/e/a/g/b;->B:I

    if-eq v4, v5, :cond_2b

    iput v5, v2, Lc/e/a/g/b;->B:I

    add-int/lit8 v3, v3, 0x1

    :cond_2b
    iget v4, v2, Lc/e/a/g/b;->C:I

    iget v5, p0, Lc/e/a/g/b;->C:I

    if-eq v4, v5, :cond_2c

    iput v5, v2, Lc/e/a/g/b;->C:I

    add-int/lit8 v3, v3, 0x1

    :cond_2c
    iget v4, v2, Lc/e/a/g/b;->D:I

    iget v5, p0, Lc/e/a/g/b;->D:I

    if-eq v4, v5, :cond_2d

    iput v5, v2, Lc/e/a/g/b;->D:I

    add-int/lit8 v3, v3, 0x1

    :cond_2d
    iget v4, v2, Lc/e/a/g/b;->E:I

    iget v5, p0, Lc/e/a/g/b;->E:I

    if-eq v4, v5, :cond_2f

    iput v5, v2, Lc/e/a/g/b;->E:I

    sget-boolean v4, Lc/e/a/c;->r:Z

    if-eqz v4, :cond_2e

    const/16 v4, 0x20

    sget-object v5, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget v5, v5, Lc/e/a/g/b;->E:I

    int-to-long v5, v5

    invoke-static {v4, v5, v6}, Lcom/uc/crashsdk/JNIBridge;->set(IJ)J

    :cond_2e
    add-int/lit8 v3, v3, 0x1

    :cond_2f
    iget-boolean v4, v2, Lc/e/a/g/b;->G:Z

    iget-boolean v5, p0, Lc/e/a/g/b;->G:Z

    if-eq v4, v5, :cond_30

    iput-boolean v5, v2, Lc/e/a/g/b;->G:Z

    add-int/lit8 v3, v3, 0x1

    :cond_30
    iget-boolean v4, v2, Lc/e/a/g/b;->H:Z

    iget-boolean v5, p0, Lc/e/a/g/b;->H:Z

    if-eq v4, v5, :cond_31

    iput-boolean v5, v2, Lc/e/a/g/b;->H:Z

    add-int/lit8 v3, v3, 0x1

    sget-boolean v4, Lc/e/a/c;->r:Z

    if-eqz v4, :cond_31

    const/4 v4, 0x5

    sget-object v5, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-boolean v5, v5, Lc/e/a/g/b;->H:Z

    invoke-static {v4, v5}, Lcom/uc/crashsdk/JNIBridge;->set(IZ)J

    :cond_31
    iget-boolean v4, v2, Lc/e/a/g/b;->u:Z

    iget-boolean v5, p0, Lc/e/a/g/b;->u:Z

    if-eq v4, v5, :cond_32

    iput-boolean v5, v2, Lc/e/a/g/b;->u:Z

    add-int/lit8 v3, v3, 0x1

    sget-boolean v4, Lc/e/a/c;->r:Z

    if-eqz v4, :cond_32

    const/4 v4, 0x6

    sget-object v5, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-boolean v5, v5, Lc/e/a/g/b;->u:Z

    invoke-static {v4, v5}, Lcom/uc/crashsdk/JNIBridge;->set(IZ)J

    :cond_32
    iget-boolean v4, v2, Lc/e/a/g/b;->I:Z

    iget-boolean v5, p0, Lc/e/a/g/b;->I:Z

    if-eq v4, v5, :cond_33

    iput-boolean v5, v2, Lc/e/a/g/b;->I:Z

    add-int/lit8 v3, v3, 0x1

    :cond_33
    iget-boolean v4, v2, Lc/e/a/g/b;->J:Z

    iget-boolean v5, p0, Lc/e/a/g/b;->J:Z

    if-eq v4, v5, :cond_34

    iput-boolean v5, v2, Lc/e/a/g/b;->J:Z

    add-int/lit8 v3, v3, 0x1

    :cond_34
    iget-boolean v4, v2, Lc/e/a/g/b;->v:Z

    iget-boolean v5, p0, Lc/e/a/g/b;->v:Z

    if-eq v4, v5, :cond_35

    iput-boolean v5, v2, Lc/e/a/g/b;->v:Z

    add-int/lit8 v3, v3, 0x1

    :cond_35
    iget v4, v2, Lc/e/a/g/b;->O:I

    iget v5, p0, Lc/e/a/g/b;->O:I

    if-eq v4, v5, :cond_37

    iput v5, v2, Lc/e/a/g/b;->O:I

    sget-boolean v4, Lc/e/a/c;->r:Z

    if-eqz v4, :cond_36

    const/16 v4, 0xa

    iget v5, v2, Lc/e/a/g/b;->O:I

    int-to-long v5, v5

    invoke-static {v4, v5, v6}, Lcom/uc/crashsdk/JNIBridge;->set(IJ)J

    :cond_36
    add-int/lit8 v3, v3, 0x1

    :cond_37
    iget v4, v2, Lc/e/a/g/b;->P:I

    iget v5, p0, Lc/e/a/g/b;->P:I

    if-eq v4, v5, :cond_39

    iput v5, v2, Lc/e/a/g/b;->P:I

    sget-boolean v4, Lc/e/a/c;->r:Z

    if-eqz v4, :cond_38

    const/16 v4, 0x16

    iget v5, v2, Lc/e/a/g/b;->P:I

    int-to-long v5, v5

    invoke-static {v4, v5, v6}, Lcom/uc/crashsdk/JNIBridge;->set(IJ)J

    :cond_38
    add-int/lit8 v3, v3, 0x1

    :cond_39
    iget v4, v2, Lc/e/a/g/b;->K:I

    iget v5, p0, Lc/e/a/g/b;->K:I

    if-eq v4, v5, :cond_3b

    if-gtz v4, :cond_3a

    if-lez v5, :cond_3a

    invoke-static {v1}, Lc/e/a/b;->a(Z)Z

    :cond_3a
    iget v1, p0, Lc/e/a/g/b;->K:I

    iput v1, v2, Lc/e/a/g/b;->K:I

    add-int/lit8 v3, v3, 0x1

    :cond_3b
    iget v1, v2, Lc/e/a/g/b;->L:I

    iget v4, p0, Lc/e/a/g/b;->L:I

    if-eq v1, v4, :cond_3c

    iput v4, v2, Lc/e/a/g/b;->L:I

    add-int/lit8 v3, v3, 0x1

    :cond_3c
    iget-wide v4, v2, Lc/e/a/g/b;->S:J

    iget-wide v6, p0, Lc/e/a/g/b;->S:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_3e

    iput-wide v6, v2, Lc/e/a/g/b;->S:J

    sget-boolean v1, Lc/e/a/c;->r:Z

    if-eqz v1, :cond_3d

    const/16 v1, 0x9

    iget-wide v4, v2, Lc/e/a/g/b;->S:J

    invoke-static {v1, v4, v5}, Lcom/uc/crashsdk/JNIBridge;->set(IJ)J

    :cond_3d
    add-int/lit8 v3, v3, 0x1

    :cond_3e
    iget-boolean v1, v2, Lc/e/a/g/b;->T:Z

    iget-boolean v4, p0, Lc/e/a/g/b;->T:Z

    if-eq v1, v4, :cond_40

    iput-boolean v4, v2, Lc/e/a/g/b;->T:Z

    iget-boolean v1, v2, Lc/e/a/g/b;->T:Z

    if-eqz v1, :cond_3f

    invoke-static {}, Lc/e/a/f;->b()V

    :cond_3f
    add-int/lit8 v3, v3, 0x1

    :cond_40
    iget-boolean v1, v2, Lc/e/a/g/b;->U:Z

    iget-boolean v4, p0, Lc/e/a/g/b;->U:Z

    if-eq v1, v4, :cond_42

    iput-boolean v4, v2, Lc/e/a/g/b;->U:Z

    sget-boolean v1, Lc/e/a/c;->r:Z

    if-eqz v1, :cond_41

    const/16 v1, 0x17

    iget-boolean v4, v2, Lc/e/a/g/b;->U:Z

    invoke-static {v1, v4}, Lcom/uc/crashsdk/JNIBridge;->set(IZ)J

    :cond_41
    invoke-static {}, Lc/e/a/f;->t()V

    invoke-static {}, Lc/e/a/a/c;->c()V

    invoke-static {}, Lc/e/a/a/g;->d()V

    add-int/lit8 v3, v3, 0x1

    :cond_42
    iget-boolean v1, v2, Lc/e/a/g/b;->V:Z

    iget-boolean v4, p0, Lc/e/a/g/b;->V:Z

    if-eq v1, v4, :cond_44

    iput-boolean v4, v2, Lc/e/a/g/b;->V:Z

    iget-boolean v1, v2, Lc/e/a/g/b;->V:Z

    if-eqz v1, :cond_43

    invoke-static {}, Lc/e/a/c;->b()V

    :cond_43
    add-int/lit8 v3, v3, 0x1

    :cond_44
    iget-boolean v1, v2, Lc/e/a/g/b;->W:Z

    iget-boolean v4, p0, Lc/e/a/g/b;->W:Z

    if-eq v1, v4, :cond_45

    iput-boolean v4, v2, Lc/e/a/g/b;->W:Z

    invoke-static {}, Lc/e/a/c;->a()Z

    move-result v1

    invoke-static {v1}, Lc/e/a/f;->c(Z)V

    add-int/lit8 v3, v3, 0x1

    :cond_45
    iget v1, v2, Lc/e/a/g/b;->o:I

    iget p0, p0, Lc/e/a/g/b;->o:I

    if-eq v1, p0, :cond_46

    iput p0, v2, Lc/e/a/g/b;->o:I

    add-int/lit8 v3, v3, 0x1

    :cond_46
    move v1, v3

    :goto_4
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static a(Lc/e/a/g/b;Landroid/os/Bundle;)Lc/e/a/g/b;
    .locals 8

    if-nez p0, :cond_1

    sget-object p0, Lc/e/a/i;->a:Lc/e/a/g/b;

    if-nez p0, :cond_0

    new-instance p0, Lc/e/a/g/b;

    invoke-direct {p0}, Lc/e/a/g/b;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lc/e/a/g/b;

    invoke-direct {v0, p0}, Lc/e/a/g/b;-><init>(Lc/e/a/g/b;)V

    move-object p0, v0

    :cond_1
    :goto_0
    const-class v0, Lc/e/a/g/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_2

    aget-object v6, v0, v5

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    :try_start_0
    invoke-virtual {v6, p0, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 1
    invoke-static {p0, v4}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    .line 2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Field "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " must be a "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", but give a "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    const-string v0, "(null)"

    :goto_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    return-object p0
.end method

.method public static a(Lc/e/a/g/b;Lc/e/a/g/c;)V
    .locals 1

    new-instance v0, Lc/e/a/g/b;

    invoke-direct {v0, p0}, Lc/e/a/g/b;-><init>(Lc/e/a/g/b;)V

    sput-object v0, Lc/e/a/i;->a:Lc/e/a/g/b;

    invoke-static {v0}, Lc/e/a/i;->b(Lc/e/a/g/b;)V

    new-instance p0, Lc/e/a/g/c;

    invoke-direct {p0, p1}, Lc/e/a/g/c;-><init>(Lc/e/a/g/c;)V

    sput-object p0, Lc/e/a/i;->b:Lc/e/a/g/c;

    invoke-static {}, Lc/e/a/c;->e()Z

    move-result p0

    if-nez p0, :cond_0

    :try_start_0
    invoke-static {}, Lc/e/a/i;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const/4 p1, 0x0

    .line 3
    invoke-static {p0, p1}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method

.method public static a()Z
    .locals 1

    sget-object v0, Lc/e/a/i;->a:Lc/e/a/g/b;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lc/e/a/g/b;->Z:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Lc/e/a/g/b;)V
    .locals 5

    iget-object v0, p0, Lc/e/a/g/b;->x:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lc/e/a/g/b;->x:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lc/e/a/g/b;->x:Ljava/lang/String;

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lc/e/a/g/b;->s:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lc/e/a/g/b;->G:Z

    :cond_1
    iget-boolean v0, p0, Lc/e/a/g/b;->t:Z

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lc/e/a/g/b;->H:Z

    .line 1
    :cond_2
    sget-wide v0, Lc/e/a/f;->f:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const-string v0, "local"

    invoke-static {v0}, Lc/e/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc/e/a/f;->f(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lc/e/a/f;->f:J

    :cond_3
    sget-wide v0, Lc/e/a/f;->f:J

    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-ltz v2, :cond_4

    const/16 v2, 0xc8

    .line 2
    iput v2, p0, Lc/e/a/g/b;->h:I

    const/16 v2, 0x64

    iput v2, p0, Lc/e/a/g/b;->i:I

    const-wide/32 v3, 0x10000000

    iput-wide v3, p0, Lc/e/a/g/b;->A:J

    const/16 v3, 0x7d0

    iput v3, p0, Lc/e/a/g/b;->B:I

    iput v3, p0, Lc/e/a/g/b;->C:I

    iput v2, p0, Lc/e/a/g/b;->D:I

    iput v2, p0, Lc/e/a/g/b;->E:I

    const/4 v2, 0x2

    iput v2, p0, Lc/e/a/g/b;->X:I

    const-wide/16 v2, 0x2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_4

    const/4 v2, 0x1

    iput-boolean v2, p0, Lc/e/a/g/b;->q:Z

    iput-boolean v2, p0, Lc/e/a/g/b;->r:Z

    const-wide/16 v3, 0x3

    cmp-long v0, v0, v3

    if-ltz v0, :cond_4

    iput-boolean v2, p0, Lc/e/a/g/b;->p:Z

    iput-boolean v2, p0, Lc/e/a/g/b;->Y:Z

    iput-boolean v2, p0, Lc/e/a/g/b;->Z:Z

    :cond_4
    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "mZippedLogExtension can not be \'.tmp\'!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b()Z
    .locals 1

    sget-object v0, Lc/e/a/i;->a:Lc/e/a/g/b;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lc/e/a/g/b;->Y:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static c()Ljava/lang/String;
    .locals 3

    sget-object v0, Lc/e/a/i;->b:Lc/e/a/g/c;

    iget-object v0, v0, Lc/e/a/g/c;->a:Ljava/lang/String;

    invoke-static {v0}, Lc/e/a/a/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lc/e/a/b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lc/e/a/i;->b:Lc/e/a/g/c;

    iget-object v0, v0, Lc/e/a/g/c;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "_"

    .line 1
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lc/e/a/i;->b:Lc/e/a/g/c;

    iget-object v0, v0, Lc/e/a/g/c;->b:Ljava/lang/String;

    invoke-static {v0}, Lc/e/a/a/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "release"

    return-object v0

    :cond_0
    sget-object v0, Lc/e/a/i;->b:Lc/e/a/g/c;

    iget-object v0, v0, Lc/e/a/g/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 5

    sget-object v0, Lc/e/a/i;->b:Lc/e/a/g/c;

    iget-object v0, v0, Lc/e/a/g/c;->c:Ljava/lang/String;

    invoke-static {v0}, Lc/e/a/a/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1
    sget-object v0, Lc/e/a/i;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    .line 2
    sget-object v2, Lc/e/a/a/f;->c:Ljava/lang/String;

    .line 3
    invoke-direct {v1, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v0, "classes.dex"

    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc/e/a/i;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "version unique build id: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lc/e/a/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "crashsdk"

    invoke-static {v2, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_0
    :try_start_2
    const-string v2, ""

    sput-object v2, Lc/e/a/i;->c:Ljava/lang/String;

    const/4 v2, 0x0

    .line 4
    invoke-static {v0, v2}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v1, :cond_1

    .line 5
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    :cond_1
    sget-object v0, Lc/e/a/i;->c:Ljava/lang/String;

    :goto_2
    return-object v0

    :catchall_3
    move-exception v0

    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    :cond_2
    throw v0

    .line 6
    :cond_3
    sget-object v0, Lc/e/a/i;->b:Lc/e/a/g/c;

    iget-object v0, v0, Lc/e/a/g/c;->c:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v1, "_"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .locals 2

    sget-object v0, Lc/e/a/i;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1
    sget-object v1, Lc/e/a/a/f;->b:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-object v1, v1, Lc/e/a/g/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc/e/a/i;->d:Ljava/lang/String;

    :cond_0
    sget-object v0, Lc/e/a/i;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static g()Ljava/lang/String;
    .locals 2

    sget-object v0, Lc/e/a/i;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1
    sget-object v1, Lc/e/a/a/f;->b:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-object v1, v1, Lc/e/a/g/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc/e/a/i;->e:Ljava/lang/String;

    :cond_0
    sget-object v0, Lc/e/a/i;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static h()Ljava/lang/String;
    .locals 2

    sget-object v0, Lc/e/a/i;->f:Ljava/lang/String;

    if-nez v0, :cond_3

    sget-object v0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-object v0, v0, Lc/e/a/g/b;->g:Ljava/lang/String;

    invoke-static {v0}, Lc/e/a/a/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-object v0, v0, Lc/e/a/g/b;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    invoke-static {}, Lc/e/a/c;->e()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    :cond_1
    const-string v0, "/sdcard"

    .line 2
    :goto_0
    invoke-static {v0}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-object v1, v1, Lc/e/a/g/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    sput-object v0, Lc/e/a/i;->f:Ljava/lang/String;

    :cond_3
    sget-object v0, Lc/e/a/i;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static i()V
    .locals 5

    sget-boolean v0, Lc/e/a/c;->r:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    const-wide/16 v1, 0x1

    sget-object v3, Lc/e/a/b;->b:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/uc/crashsdk/JNIBridge;->nativeSet(IJLjava/lang/String;[Ljava/lang/Object;)J

    :cond_0
    return-void
.end method

.method public static j()V
    .locals 2

    invoke-static {}, Lc/e/a/c;->A()Z

    invoke-static {}, Lc/e/a/c;->z()Z

    sget-object v0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-boolean v0, v0, Lc/e/a/g/b;->p:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lc/e/a/i;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-void
.end method

.method public static k()V
    .locals 3

    .line 1
    sget-object v0, Lc/e/a/a/f;->b:Ljava/lang/String;

    const/16 v1, 0x67

    .line 2
    invoke-static {v1, v0}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    const/16 v0, 0x68

    sget-object v1, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-object v1, v1, Lc/e/a/g/b;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    const/16 v0, 0x69

    sget-object v1, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-object v1, v1, Lc/e/a/g/b;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    const/16 v0, 0x6a

    invoke-static {}, Lc/e/a/i;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    const/16 v0, 0x6b

    invoke-static {}, Lc/e/a/f;->q()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    const/16 v0, 0x6c

    invoke-static {}, Lc/e/a/c;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    const/16 v0, 0x6d

    invoke-static {}, Lc/e/a/i;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    const/16 v0, 0x6e

    invoke-static {}, Lc/e/a/i;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    const/16 v0, 0x6f

    invoke-static {}, Lc/e/a/i;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    const/16 v0, 0x70

    const-string v1, "200521164010"

    invoke-static {v0, v1}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    const/16 v0, 0x74

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    const/16 v0, 0x75

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    const/16 v0, 0x76

    .line 3
    sget-object v1, Lc/e/a/f;->z:Ljava/lang/String;

    .line 4
    invoke-static {v0, v1}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    const/4 v0, 0x5

    sget-object v1, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-boolean v1, v1, Lc/e/a/g/b;->H:Z

    invoke-static {v0, v1}, Lcom/uc/crashsdk/JNIBridge;->set(IZ)J

    const/4 v0, 0x6

    sget-object v1, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-boolean v1, v1, Lc/e/a/g/b;->u:Z

    invoke-static {v0, v1}, Lcom/uc/crashsdk/JNIBridge;->set(IZ)J

    const/4 v0, 0x7

    sget-object v1, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-wide v1, v1, Lc/e/a/g/b;->Q:J

    invoke-static {v0, v1, v2}, Lcom/uc/crashsdk/JNIBridge;->set(IJ)J

    const/16 v0, 0x64

    sget-object v1, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-object v1, v1, Lc/e/a/g/b;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    const/16 v0, 0x65

    sget-object v1, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-object v1, v1, Lc/e/a/g/b;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    const/16 v0, 0x66

    sget-object v1, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-object v1, v1, Lc/e/a/g/b;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    return-void
.end method

.method public static l()V
    .locals 5

    sget-object v0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-boolean v0, v0, Lc/e/a/g/b;->U:Z

    const/16 v1, 0x17

    invoke-static {v1, v0}, Lcom/uc/crashsdk/JNIBridge;->set(IZ)J

    .line 1
    sget-boolean v0, Lc/e/a/c;->e0:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/16 v0, 0x22

    .line 2
    invoke-static {v0, v1}, Lcom/uc/crashsdk/JNIBridge;->set(IZ)J

    .line 3
    :cond_0
    sget-boolean v0, Lc/e/a/f;->d:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-static {v1, v1}, Lcom/uc/crashsdk/JNIBridge;->set(IZ)J

    :cond_1
    const/16 v0, 0xa

    sget-object v2, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget v2, v2, Lc/e/a/g/b;->O:I

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/uc/crashsdk/JNIBridge;->set(IJ)J

    const/4 v0, 0x3

    sget-object v2, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget v2, v2, Lc/e/a/g/b;->N:I

    int-to-long v2, v2

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4, v4}, Lcom/uc/crashsdk/JNIBridge;->nativeCmd(IJLjava/lang/String;[Ljava/lang/Object;)J

    invoke-static {}, Lc/e/a/c;->a()Z

    move-result v0

    invoke-static {v0}, Lcom/uc/crashsdk/JNIBridge;->nativeSetForeground(Z)V

    const/4 v0, 0x2

    invoke-static {}, Lc/e/a/c;->c()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/uc/crashsdk/JNIBridge;->set(IZ)J

    invoke-static {}, Lc/e/a/b;->c()V

    invoke-static {}, Lc/e/a/b;->e()V

    invoke-static {}, Lc/e/a/b;->g()V

    invoke-static {}, Lc/e/a/b;->i()V

    const/16 v0, 0x71

    sget-object v2, Lc/e/a/b;->a:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    invoke-static {v1}, Lcom/uc/crashsdk/JNIBridge;->cmd(I)J

    const/16 v0, 0x16

    sget-object v1, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget v1, v1, Lc/e/a/g/b;->P:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/uc/crashsdk/JNIBridge;->set(IJ)J

    const/16 v0, 0x7a

    invoke-static {}, Lc/e/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    const/16 v0, 0x21

    .line 5
    sget v1, Lc/e/a/b;->g:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    invoke-static {}, Lc/e/a/b;->m()Z

    :cond_2
    sget v1, Lc/e/a/b;->g:I

    int-to-long v1, v1

    .line 6
    invoke-static {v0, v1, v2}, Lcom/uc/crashsdk/JNIBridge;->set(IJ)J

    .line 7
    sget-boolean v0, Lc/e/a/c;->r:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x18

    const-wide/16 v1, 0x1

    sget-object v3, Lc/e/a/b;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/uc/crashsdk/JNIBridge;->nativeSet(IJLjava/lang/String;[Ljava/lang/Object;)J

    .line 8
    :cond_3
    sget-boolean v0, Lc/e/a/c;->r:Z

    if-eqz v0, :cond_4

    const/16 v0, 0x1b

    sget v1, Lc/e/a/c;->H:I

    int-to-long v1, v1

    const-string v3, "12"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/uc/crashsdk/JNIBridge;->nativeSet(IJLjava/lang/String;[Ljava/lang/Object;)J

    const/16 v0, 0x1e

    sget-boolean v1, Lc/e/a/c;->K:Z

    invoke-static {v0, v1}, Lcom/uc/crashsdk/JNIBridge;->set(IZ)J

    .line 9
    :cond_4
    sget-boolean v0, Lc/e/a/c;->r:Z

    if-eqz v0, :cond_5

    sget-object v0, Lc/e/a/c;->b0:Ljava/lang/String;

    if-eqz v0, :cond_5

    const/16 v1, 0x81

    invoke-static {v1, v0}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    .line 10
    :cond_5
    invoke-static {}, Lc/e/a/a/f;->d()V

    return-void
.end method
