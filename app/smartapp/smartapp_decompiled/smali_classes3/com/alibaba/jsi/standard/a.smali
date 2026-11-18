.class public final Lcom/alibaba/jsi/standard/a;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/alibaba/jsi/standard/js/Deletable;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/alibaba/jsi/standard/a;->a:Ljava/util/Set;

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/alibaba/jsi/standard/a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 36
    sput-boolean v1, Lcom/alibaba/jsi/standard/a;->c:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static a(Lcom/alibaba/jsi/standard/JSContext;Lcom/alibaba/jsi/standard/js/Deletable;)V
    .locals 2

    .line 43
    sget-boolean v0, Lcom/alibaba/jsi/standard/a;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_1

    .line 49
    invoke-virtual {p0}, Lcom/alibaba/jsi/standard/JSContext;->getJSEngine()Lcom/alibaba/jsi/standard/JSEngine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/alibaba/jsi/standard/JSEngine;->a(Lcom/alibaba/jsi/standard/js/Deletable;)V

    return-void

    .line 46
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Pass null JSContext with object: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static a(Lcom/alibaba/jsi/standard/JSContext;Ljava/util/Set;Ljava/lang/String;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/jsi/standard/JSContext;",
            "Ljava/util/Set<",
            "Lcom/alibaba/jsi/standard/js/Deletable;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 98
    sget-boolean v1, Lcom/alibaba/jsi/standard/a;->c:Z

    if-nez v1, :cond_0

    return-void

    .line 100
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 102
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 103
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 104
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 105
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 106
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 107
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 108
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 109
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 111
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 112
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 114
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->size()I

    move-result v12

    .line 115
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/alibaba/jsi/standard/js/Deletable;

    .line 116
    instance-of v15, v14, Lcom/alibaba/jsi/standard/js/JSSymbol;

    if-eqz v15, :cond_1

    .line 117
    invoke-interface {v1, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 120
    :cond_1
    instance-of v15, v14, Lcom/alibaba/jsi/standard/js/JSArray;

    if-eqz v15, :cond_2

    .line 121
    invoke-interface {v2, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 124
    :cond_2
    instance-of v15, v14, Lcom/alibaba/jsi/standard/js/JSArrayBuffer;

    if-eqz v15, :cond_3

    .line 125
    invoke-interface {v3, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 128
    :cond_3
    instance-of v15, v14, Lcom/alibaba/jsi/standard/js/JSFunction;

    if-eqz v15, :cond_4

    .line 129
    invoke-interface {v4, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 132
    :cond_4
    instance-of v15, v14, Lcom/alibaba/jsi/standard/js/JSMap;

    if-eqz v15, :cond_5

    .line 133
    invoke-interface {v5, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 136
    :cond_5
    instance-of v15, v14, Lcom/alibaba/jsi/standard/js/JSSet;

    if-eqz v15, :cond_6

    .line 137
    invoke-interface {v6, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 140
    :cond_6
    instance-of v15, v14, Lcom/alibaba/jsi/standard/js/JSBooleanObject;

    if-nez v15, :cond_b

    instance-of v15, v14, Lcom/alibaba/jsi/standard/js/JSNumberObject;

    if-nez v15, :cond_b

    instance-of v15, v14, Lcom/alibaba/jsi/standard/js/JSStringObject;

    if-nez v15, :cond_b

    instance-of v15, v14, Lcom/alibaba/jsi/standard/js/JSSymbolObject;

    if-eqz v15, :cond_7

    goto :goto_1

    .line 147
    :cond_7
    instance-of v15, v14, Lcom/alibaba/jsi/standard/js/JSWeakValue;

    if-eqz v15, :cond_8

    .line 148
    invoke-interface {v8, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 151
    :cond_8
    instance-of v15, v14, Lcom/alibaba/jsi/standard/js/JSException;

    if-eqz v15, :cond_9

    .line 152
    invoke-interface {v11, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 155
    :cond_9
    instance-of v15, v14, Lcom/alibaba/jsi/standard/js/Template;

    if-eqz v15, :cond_a

    .line 156
    invoke-interface {v10, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 159
    :cond_a
    invoke-interface {v9, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 144
    :cond_b
    :goto_1
    invoke-interface {v7, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_c
    if-eqz v0, :cond_d

    .line 166
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/jsi/standard/JSContext;->getJSEngine()Lcom/alibaba/jsi/standard/JSEngine;

    move-result-object v14

    .line 167
    new-instance v15, Lcom/alibaba/jsi/standard/js/EngineScope;

    invoke-direct {v15, v14}, Lcom/alibaba/jsi/standard/js/EngineScope;-><init>(Lcom/alibaba/jsi/standard/JSEngine;)V

    goto :goto_2

    :cond_d
    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_2
    :try_start_0
    const-string v13, " "
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v16, v15

    :try_start_1
    const-string v15, "jsi"

    .line 170
    invoke-static {v15, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v13, "*** *** *** *** ***  Alive Java JS Objects  *** *** *** *** ***"

    const-string v15, "jsi"

    .line 171
    invoke-static {v15, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v15, "JSEngine: "

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v15, p2

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v15, "jsi"

    invoke-static {v15, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v14, :cond_10

    .line 174
    invoke-virtual {v14}, Lcom/alibaba/jsi/standard/JSEngine;->getContexts()Ljava/util/List;

    move-result-object v13

    .line 175
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    const/16 v15, 0x14

    if-le v14, v15, :cond_e

    goto :goto_3

    .line 177
    :cond_e
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v15

    .line 178
    :goto_3
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_f

    .line 179
    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v17, v11

    const-string v11, "JSContext (%d of %d):"

    move-object/from16 v18, v10

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    .line 180
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v20, 0x0

    aput-object v19, v10, v20

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v21, 0x1

    aput-object v19, v10, v21

    .line 179
    invoke-static {v14, v11, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "jsi"

    invoke-static {v11, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alibaba/jsi/standard/JSContext;

    add-int/lit8 v13, v20, 0x1

    if-gt v13, v15, :cond_11

    .line 184
    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 p2, v10

    const-string v10, "  * "

    invoke-direct {v14, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/alibaba/jsi/standard/JSContext;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "jsi"

    invoke-static {v11, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v10, p2

    move/from16 v20, v13

    goto :goto_4

    :cond_f
    move-object/from16 v18, v10

    move-object/from16 v17, v11

    const-string v10, "JSContext: none"

    const-string v11, "jsi"

    .line 189
    invoke-static {v11, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_10
    move-object/from16 v18, v10

    move-object/from16 v17, v11

    .line 193
    :cond_11
    :goto_5
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Objects count: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "jsi"

    invoke-static {v11, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "JSSymbol"

    .line 194
    invoke-static {v0, v1, v10}, Lcom/alibaba/jsi/standard/a;->b(Lcom/alibaba/jsi/standard/JSContext;Ljava/util/Set;Ljava/lang/String;)V

    const-string v1, "JSArray"

    .line 195
    invoke-static {v0, v2, v1}, Lcom/alibaba/jsi/standard/a;->b(Lcom/alibaba/jsi/standard/JSContext;Ljava/util/Set;Ljava/lang/String;)V

    const-string v1, "JSArrayBuffer"

    .line 196
    invoke-static {v0, v3, v1}, Lcom/alibaba/jsi/standard/a;->b(Lcom/alibaba/jsi/standard/JSContext;Ljava/util/Set;Ljava/lang/String;)V

    const-string v1, "JSFunction"

    .line 197
    invoke-static {v0, v4, v1}, Lcom/alibaba/jsi/standard/a;->b(Lcom/alibaba/jsi/standard/JSContext;Ljava/util/Set;Ljava/lang/String;)V

    const-string v1, "JSMap"

    .line 198
    invoke-static {v0, v5, v1}, Lcom/alibaba/jsi/standard/a;->b(Lcom/alibaba/jsi/standard/JSContext;Ljava/util/Set;Ljava/lang/String;)V

    const-string v1, "JSSet"

    .line 199
    invoke-static {v0, v6, v1}, Lcom/alibaba/jsi/standard/a;->b(Lcom/alibaba/jsi/standard/JSContext;Ljava/util/Set;Ljava/lang/String;)V

    const-string v1, "JSPrimitiveObject"

    .line 200
    invoke-static {v0, v7, v1}, Lcom/alibaba/jsi/standard/a;->b(Lcom/alibaba/jsi/standard/JSContext;Ljava/util/Set;Ljava/lang/String;)V

    const-string v1, "JSObject"

    .line 201
    invoke-static {v0, v9, v1}, Lcom/alibaba/jsi/standard/a;->b(Lcom/alibaba/jsi/standard/JSContext;Ljava/util/Set;Ljava/lang/String;)V

    const-string v1, "JSWeakValue"

    .line 202
    invoke-static {v0, v8, v1}, Lcom/alibaba/jsi/standard/a;->b(Lcom/alibaba/jsi/standard/JSContext;Ljava/util/Set;Ljava/lang/String;)V

    const-string v1, "Template"

    move-object/from16 v2, v18

    .line 203
    invoke-static {v0, v2, v1}, Lcom/alibaba/jsi/standard/a;->b(Lcom/alibaba/jsi/standard/JSContext;Ljava/util/Set;Ljava/lang/String;)V

    const-string v1, "JSException"

    move-object/from16 v2, v17

    .line 204
    invoke-static {v0, v2, v1}, Lcom/alibaba/jsi/standard/a;->b(Lcom/alibaba/jsi/standard/JSContext;Ljava/util/Set;Ljava/lang/String;)V

    .line 205
    sget-object v1, Lcom/alibaba/jsi/standard/a;->a:Ljava/util/Set;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 206
    :try_start_2
    sget-object v0, Lcom/alibaba/jsi/standard/a;->a:Ljava/util/Set;

    const-string v2, "OutOfEngineObjects"

    const/4 v3, 0x0

    invoke-static {v3, v0, v2}, Lcom/alibaba/jsi/standard/a;->b(Lcom/alibaba/jsi/standard/JSContext;Ljava/util/Set;Ljava/lang/String;)V

    .line 207
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v0, "*** *** *** *** *** *** *** *** *** *** *** *** *** *** *** ***"

    const-string v1, "jsi"

    .line 208
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, " "

    const-string v1, "jsi"

    .line 209
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v16, :cond_12

    .line 212
    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/jsi/standard/js/EngineScope;->exit()V

    :cond_12
    return-void

    :catchall_0
    move-exception v0

    .line 207
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object/from16 v16, v15

    :goto_6
    if-eqz v16, :cond_13

    .line 212
    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/jsi/standard/js/EngineScope;->exit()V

    :cond_13
    goto :goto_8

    :goto_7
    throw v0

    :goto_8
    goto :goto_7
.end method

.method public static a(Lcom/alibaba/jsi/standard/js/Deletable;)V
    .locals 2

    .line 64
    sget-boolean v0, Lcom/alibaba/jsi/standard/a;->c:Z

    if-nez v0, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 66
    :cond_0
    sget-object v0, Lcom/alibaba/jsi/standard/a;->a:Ljava/util/Set;

    monitor-enter v0

    .line 67
    :try_start_0
    sget-object v1, Lcom/alibaba/jsi/standard/a;->a:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    monitor-exit v0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static a(Lcom/alibaba/jsi/standard/js/Template;)V
    .locals 2

    .line 53
    sget-boolean v0, Lcom/alibaba/jsi/standard/a;->c:Z

    if-nez v0, :cond_0

    return-void

    .line 55
    :cond_0
    invoke-static {}, Lcom/alibaba/jsi/standard/JSEngine;->a()Lcom/alibaba/jsi/standard/JSEngine;

    move-result-object v0

    if-nez v0, :cond_1

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can not get JSEngine for Template: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "jsi"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 59
    :cond_1
    invoke-virtual {v0, p0}, Lcom/alibaba/jsi/standard/JSEngine;->a(Lcom/alibaba/jsi/standard/js/Deletable;)V

    return-void
.end method

.method static a(Z)V
    .locals 2

    .line 39
    sget-object v0, Lcom/alibaba/jsi/standard/a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result p0

    if-lez p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    sput-boolean v1, Lcom/alibaba/jsi/standard/a;->c:Z

    return-void
.end method

.method public static b(Lcom/alibaba/jsi/standard/JSContext;Lcom/alibaba/jsi/standard/js/Deletable;)V
    .locals 1

    .line 72
    sget-boolean v0, Lcom/alibaba/jsi/standard/a;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_1

    .line 75
    invoke-virtual {p0}, Lcom/alibaba/jsi/standard/JSContext;->getJSEngine()Lcom/alibaba/jsi/standard/JSEngine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/alibaba/jsi/standard/JSEngine;->b(Lcom/alibaba/jsi/standard/js/Deletable;)V

    :cond_1
    return-void
.end method

.method private static b(Lcom/alibaba/jsi/standard/JSContext;Ljava/util/Set;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/jsi/standard/JSContext;",
            "Ljava/util/Set<",
            "Lcom/alibaba/jsi/standard/js/Deletable;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 219
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 221
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 222
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p2

    const/16 v3, 0x14

    if-le p2, v3, :cond_1

    const/16 p2, 0x14

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p2

    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v4, 0x1

    aput-object p2, v1, v4

    const/4 p2, 0x2

    .line 223
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, p2

    const-string p2, "%s (%d of %d):"

    .line 221
    invoke-static {v0, p2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "jsi"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/jsi/standard/js/Deletable;

    add-int/2addr v2, v4

    if-gt v2, v3, :cond_3

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "  * "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p0, :cond_2

    .line 232
    instance-of v5, p2, Lcom/alibaba/jsi/standard/js/JSValue;

    if-eqz v5, :cond_2

    .line 233
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    nop

    invoke-virtual {p2, p0}, Lcom/alibaba/jsi/standard/js/JSValue;->toString(Lcom/alibaba/jsi/standard/JSContext;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 235
    :cond_2
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static b(Lcom/alibaba/jsi/standard/js/Deletable;)V
    .locals 2

    .line 89
    sget-boolean v0, Lcom/alibaba/jsi/standard/a;->c:Z

    if-nez v0, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 91
    :cond_0
    sget-object v0, Lcom/alibaba/jsi/standard/a;->a:Ljava/util/Set;

    monitor-enter v0

    .line 92
    :try_start_0
    sget-object v1, Lcom/alibaba/jsi/standard/a;->a:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 93
    monitor-exit v0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static b(Lcom/alibaba/jsi/standard/js/Template;)V
    .locals 1

    .line 80
    sget-boolean v0, Lcom/alibaba/jsi/standard/a;->c:Z

    if-nez v0, :cond_0

    return-void

    .line 82
    :cond_0
    invoke-static {}, Lcom/alibaba/jsi/standard/JSEngine;->a()Lcom/alibaba/jsi/standard/JSEngine;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {v0, p0}, Lcom/alibaba/jsi/standard/JSEngine;->b(Lcom/alibaba/jsi/standard/js/Deletable;)V

    :cond_1
    return-void
.end method
