.class public Lc/e/a/a/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic d:Z


# instance fields
.field public final b:I

.field public final c:[Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lc/e/a/a/d;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lc/e/a/a/d;->d:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lc/e/a/a/d;->b:I

    const/4 p1, 0x0

    iput-object p1, p0, Lc/e/a/a/d;->c:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lc/e/a/a/d;->b:I

    iput-object p2, p0, Lc/e/a/a/d;->c:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 13

    iget v0, p0, Lc/e/a/a/d;->b:I

    const/4 v1, 0x0

    const/16 v2, 0x1c4

    const/16 v3, 0x1c3

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unknown sync runnable: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lc/e/a/a/d;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "crashsdk"

    invoke-static {v2, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lc/e/a/a/d;->d:Z

    if-eqz v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    iget-object v1, p0, Lc/e/a/a/d;->c:[Ljava/lang/Object;

    invoke-static {v0, v1}, Lc/e/a/h;->a(I[Ljava/lang/Object;)Z

    move-result v0

    return v0

    :pswitch_1
    iget-object v1, p0, Lc/e/a/a/d;->c:[Ljava/lang/Object;

    invoke-static {v0, v1}, Lc/e/a/a/g;->b(I[Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1
    iget v0, p0, Lc/e/a/a/d;->b:I

    iget-object v4, p0, Lc/e/a/a/d;->c:[Ljava/lang/Object;

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v0, v3, :cond_6

    if-eq v0, v2, :cond_3

    .line 1
    sget-boolean v0, Lc/e/a/f;->Z:Z

    if-eqz v0, :cond_2

    goto/16 :goto_3

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    sget-boolean v0, Lc/e/a/f;->Z:Z

    if-nez v0, :cond_5

    if-eqz v4, :cond_4

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    :goto_0
    aget-object v0, v4, v1

    check-cast v0, Ljava/lang/String;

    aget-object v2, v4, v8

    check-cast v2, Lc/e/a/f$d;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v4, v5, [Ljava/lang/Object;

    iget-wide v9, v2, Lc/e/a/f$d;->a:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    iget-wide v9, v2, Lc/e/a/f$d;->b:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v8

    iget v1, v2, Lc/e/a/f$d;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v7

    iget v1, v2, Lc/e/a/f$d;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v6

    const-string v1, "%d %d %d %d"

    invoke-static {v3, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v2, v0}, Lc/e/a/a/f;->a(Ljava/io/File;[B)Z

    move-result v1

    goto :goto_3

    :cond_6
    sget-boolean v0, Lc/e/a/f;->Z:Z

    if-nez v0, :cond_8

    if-eqz v4, :cond_7

    goto :goto_1

    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_8
    :goto_1
    aget-object v0, v4, v1

    check-cast v0, Ljava/lang/String;

    aget-object v2, v4, v8

    check-cast v2, Lc/e/a/f$d;

    .line 2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x40

    invoke-static {v3, v0, v1}, Lc/e/a/a/f;->a(Ljava/io/File;IZ)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_3

    :cond_9
    :try_start_0
    const-string v3, "(\\d+)\\s+(\\d+)\\s+(\\d+)\\s+(\\d+)"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v3

    const-wide/32 v11, 0x5265c00

    cmp-long v9, v9, v11

    if-gez v9, :cond_a

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v2, Lc/e/a/f$d;->b:J

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lc/e/a/f$d;->c:I

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lc/e/a/f$d;->d:I

    iput-wide v3, v2, Lc/e/a/f$d;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {v0, v1}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    :cond_a
    :goto_2
    move v1, v8

    :goto_3
    return v1

    :pswitch_data_0
    .packed-switch 0x15f
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2ef
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public run()V
    .locals 2

    iget v0, p0, Lc/e/a/a/d;->b:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_7

    const/16 v1, 0x1f4

    if-eq v0, v1, :cond_6

    const/16 v1, 0x2bc

    if-eq v0, v1, :cond_5

    const/16 v1, 0x320

    if-eq v0, v1, :cond_2

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xca

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown async runnable: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lc/e/a/a/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "crashsdk"

    invoke-static {v1, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lc/e/a/a/d;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    iget v0, p0, Lc/e/a/a/d;->b:I

    iget-object v1, p0, Lc/e/a/a/d;->c:[Ljava/lang/Object;

    invoke-static {v0, v1}, Lc/e/a/f;->a(I[Ljava/lang/Object;)V

    return-void

    :pswitch_1
    iget-object v1, p0, Lc/e/a/a/d;->c:[Ljava/lang/Object;

    invoke-static {v0, v1}, Lc/e/a/a/g;->a(I[Ljava/lang/Object;)V

    return-void

    :pswitch_2
    invoke-static {v0}, Lc/e/a/c;->a(I)V

    return-void

    :cond_1
    iget v0, p0, Lc/e/a/a/d;->b:I

    invoke-static {v0}, Lc/e/a/b;->a(I)V

    return-void

    :cond_2
    if-eq v0, v1, :cond_4

    .line 1
    sget-boolean v0, Lc/e/a/a/f;->j:Z

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    invoke-static {}, Lc/e/a/a/f;->e()V

    :goto_0
    return-void

    .line 2
    :cond_5
    invoke-static {v0}, Lc/e/a/h;->a(I)V

    return-void

    :cond_6
    invoke-static {v0}, Lc/e/a/a/c;->a(I)V

    return-void

    :cond_7
    iget-object v1, p0, Lc/e/a/a/d;->c:[Ljava/lang/Object;

    invoke-static {v0, v1}, Lc/e/a/a/e;->a(I[Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12d
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x191
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x195
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@action_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/e/a/a/d;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
