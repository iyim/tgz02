.class public Lcom/taobao/android/nav/Nav;
.super Ljava/lang/Object;
.source "Nav.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/nav/Nav$NavHookIntent;,
        Lcom/taobao/android/nav/Nav$DefaultResovler;,
        Lcom/taobao/android/nav/Nav$SortedResolveInfo;,
        Lcom/taobao/android/nav/Nav$NavigationTimeMonitor;,
        Lcom/taobao/android/nav/Nav$NavigationCanceledException;,
        Lcom/taobao/android/nav/Nav$NavExceptionHandler;,
        Lcom/taobao/android/nav/Nav$NavHooker;,
        Lcom/taobao/android/nav/Nav$RedirectNavPreprocessor;,
        Lcom/taobao/android/nav/Nav$NavPreprocessor;,
        Lcom/taobao/android/nav/Nav$NavResolver;,
        Lcom/taobao/android/nav/Nav$DemoActivity;
    }
.end annotation


# static fields
.field private static final DEFAULT_RESOLVER:Lcom/taobao/android/nav/Nav$NavResolver;

.field public static final KExtraReferrer:Ljava/lang/String; = "referrer"

.field private static final TAG:Ljava/lang/String; = "Nav"

.field private static mExceptionHandler:Lcom/taobao/android/nav/Nav$NavExceptionHandler;

.field private static volatile mNavResolver:Lcom/taobao/android/nav/Nav$NavResolver;

.field private static final mPreprocessor:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/android/nav/Nav$NavPreprocessor;",
            ">;"
        }
    .end annotation
.end field

.field private static final mPriorHookers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/taobao/android/nav/Nav$NavHooker;",
            ">;"
        }
    .end annotation
.end field

.field private static final mStickPreprocessor:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/android/nav/Nav$NavPreprocessor;",
            ">;"
        }
    .end annotation
.end field

.field private static mTransition:[I

.field private static sNavMonitor:Lcom/taobao/android/nav/Nav$NavigationTimeMonitor;


# instance fields
.field private mAllowLeaving:Z

.field private final mContext:Landroid/content/Context;

.field private mDisableTransition:Z

.field private mDisallowLoopback:Z

.field private final mIntent:Landroid/content/Intent;

.field private mOptions:Landroid/os/Bundle;

.field private mRequestCode:I

.field private mSkipHooker:Z

.field private mSkipPreprocess:Z

.field private mSkipPriorHooker:Z

.field private mTaskStack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 744
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/taobao/android/nav/Nav;->mPreprocessor:Ljava/util/List;

    .line 745
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/taobao/android/nav/Nav;->mStickPreprocessor:Ljava/util/List;

    .line 746
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/taobao/android/nav/Nav;->mPriorHookers:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 747
    sput-object v0, Lcom/taobao/android/nav/Nav;->sNavMonitor:Lcom/taobao/android/nav/Nav$NavigationTimeMonitor;

    .line 751
    new-instance v1, Lcom/taobao/android/nav/Nav$DefaultResovler;

    invoke-direct {v1, v0}, Lcom/taobao/android/nav/Nav$DefaultResovler;-><init>(Lcom/taobao/android/nav/Nav$1;)V

    sput-object v1, Lcom/taobao/android/nav/Nav;->DEFAULT_RESOLVER:Lcom/taobao/android/nav/Nav$NavResolver;

    .line 752
    sget-object v0, Lcom/taobao/android/nav/Nav;->DEFAULT_RESOLVER:Lcom/taobao/android/nav/Nav$NavResolver;

    sput-object v0, Lcom/taobao/android/nav/Nav;->mNavResolver:Lcom/taobao/android/nav/Nav$NavResolver;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 705
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 734
    iput v0, p0, Lcom/taobao/android/nav/Nav;->mRequestCode:I

    .line 706
    iput-object p1, p0, Lcom/taobao/android/nav/Nav;->mContext:Landroid/content/Context;

    .line 707
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/taobao/android/nav/Nav;->mIntent:Landroid/content/Intent;

    const/4 p1, 0x0

    .line 708
    iput-object p1, p0, Lcom/taobao/android/nav/Nav;->mOptions:Landroid/os/Bundle;

    return-void
.end method

.method public static from(Landroid/content/Context;)Lcom/taobao/android/nav/Nav;
    .locals 1

    .line 175
    new-instance v0, Lcom/taobao/android/nav/Nav;

    invoke-direct {v0, p0}, Lcom/taobao/android/nav/Nav;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static getActivities(Landroid/content/Context;I[Landroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 427
    invoke-static {p0, p1, p2, p3}, Lcom/taobao/android/nav/Nav;->getActivities(Landroid/content/Context;I[Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private isDebug()Z
    .locals 1

    .line 727
    iget-object v0, p0, Lcom/taobao/android/nav/Nav;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 728
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private optimum(Ljava/util/List;)Landroid/content/pm/ResolveInfo;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 581
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 582
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    return-object p1

    .line 585
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 587
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 589
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 590
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/taobao/android/nav/Nav;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 591
    new-instance v5, Lcom/taobao/android/nav/Nav$SortedResolveInfo;

    iget v6, v4, Landroid/content/pm/ResolveInfo;->priority:I

    invoke-direct {v5, p0, v4, v6, v3}, Lcom/taobao/android/nav/Nav$SortedResolveInfo;-><init>(Lcom/taobao/android/nav/Nav;Landroid/content/pm/ResolveInfo;II)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 593
    :cond_3
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 594
    iget-object v6, p0, Lcom/taobao/android/nav/Nav;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\."

    .line 595
    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 596
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 597
    array-length v7, v5

    const/4 v8, 0x2

    if-lt v7, v8, :cond_2

    array-length v7, v6

    if-lt v7, v8, :cond_2

    .line 598
    aget-object v7, v5, v2

    aget-object v8, v6, v2

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    aget-object v5, v5, v3

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 599
    new-instance v5, Lcom/taobao/android/nav/Nav$SortedResolveInfo;

    iget v6, v4, Landroid/content/pm/ResolveInfo;->priority:I

    invoke-direct {v5, p0, v4, v6, v2}, Lcom/taobao/android/nav/Nav$SortedResolveInfo;-><init>(Lcom/taobao/android/nav/Nav;Landroid/content/pm/ResolveInfo;II)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 605
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_6

    .line 606
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v3, :cond_5

    .line 607
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 608
    :cond_5
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/android/nav/Nav$SortedResolveInfo;

    invoke-static {p1}, Lcom/taobao/android/nav/Nav$SortedResolveInfo;->access$100(Lcom/taobao/android/nav/Nav$SortedResolveInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    .line 609
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-object p1

    :cond_6
    return-object v0
.end method

.method public static registerHooker(Lcom/taobao/android/nav/Nav$NavHooker;)V
    .locals 2

    .line 675
    sget-object v0, Lcom/taobao/android/nav/Nav;->mPriorHookers:Landroid/util/SparseArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static registerNavMonitor(Lcom/taobao/android/nav/Nav$NavigationTimeMonitor;)V
    .locals 0

    .line 688
    sput-object p0, Lcom/taobao/android/nav/Nav;->sNavMonitor:Lcom/taobao/android/nav/Nav$NavigationTimeMonitor;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static registerPreprocessor(Lcom/taobao/android/nav/Nav$NavPreprocessor;)V
    .locals 1

    .line 661
    sget-object v0, Lcom/taobao/android/nav/Nav;->mPreprocessor:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static registerPriorHooker(Lcom/taobao/android/nav/Nav$NavHooker;I)V
    .locals 1

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 684
    sget-object v0, Lcom/taobao/android/nav/Nav;->mPriorHookers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    .line 681
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "NavHooker\'s priority less than NAVHOOKER_HIGH_PRIORITY, larger than NAVHOOKER_LOW_PRIORITY"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static registerStickPreprocessor(Lcom/taobao/android/nav/Nav$NavPreprocessor;)V
    .locals 1

    .line 653
    sget-object v0, Lcom/taobao/android/nav/Nav;->mStickPreprocessor:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setExceptionHandler(Lcom/taobao/android/nav/Nav$NavExceptionHandler;)V
    .locals 0

    .line 692
    sput-object p0, Lcom/taobao/android/nav/Nav;->mExceptionHandler:Lcom/taobao/android/nav/Nav$NavExceptionHandler;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setNavResolver(Lcom/taobao/android/nav/Nav$NavResolver;)V
    .locals 0

    .line 696
    sput-object p0, Lcom/taobao/android/nav/Nav;->mNavResolver:Lcom/taobao/android/nav/Nav$NavResolver;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setTransition(II)V
    .locals 2

    const/4 v0, 0x2

    .line 700
    new-array v0, v0, [I

    sput-object v0, Lcom/taobao/android/nav/Nav;->mTransition:[I

    .line 701
    sget-object v0, Lcom/taobao/android/nav/Nav;->mTransition:[I

    const/4 v1, 0x0

    aput p0, v0, v1

    const/4 p0, 0x1

    .line 702
    aput p1, v0, p0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private specify(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3

    .line 554
    iget-boolean v0, p0, Lcom/taobao/android/nav/Nav;->mAllowLeaving:Z

    if-nez v0, :cond_1

    .line 555
    sget-object v0, Lcom/taobao/android/nav/Nav;->mNavResolver:Lcom/taobao/android/nav/Nav$NavResolver;

    iget-object v1, p0, Lcom/taobao/android/nav/Nav;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-interface {v0, v1, p1, v2}, Lcom/taobao/android/nav/Nav$NavResolver;->queryIntentActivities(Landroid/content/pm/PackageManager;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 558
    invoke-direct {p0, v0}, Lcom/taobao/android/nav/Nav;->optimum(Ljava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    .line 561
    :cond_0
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    return-object p1
.end method

.method private startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 405
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 406
    iget-object v0, p0, Lcom/taobao/android/nav/Nav;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    .line 408
    :cond_0
    iget-object p2, p0, Lcom/taobao/android/nav/Nav;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivities([Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private to(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 1

    .line 454
    iget-boolean v0, p0, Lcom/taobao/android/nav/Nav;->mSkipPreprocess:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/taobao/android/nav/Nav;->to(Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method private to(Landroid/net/Uri;Z)Landroid/content/Intent;
    .locals 18

    move-object/from16 v0, p0

    .line 458
    iget-object v1, v0, Lcom/taobao/android/nav/Nav;->mIntent:Landroid/content/Intent;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 460
    sget-object v1, Lcom/taobao/android/nav/Nav;->mPriorHookers:Landroid/util/SparseArray;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/android/nav/Nav$NavHooker;

    .line 461
    iget-boolean v3, v0, Lcom/taobao/android/nav/Nav;->mSkipHooker:Z

    const/4 v4, 0x0

    if-nez v3, :cond_0

    if-eqz v1, :cond_0

    .line 462
    iget-object v3, v0, Lcom/taobao/android/nav/Nav;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/taobao/android/nav/Nav;->mIntent:Landroid/content/Intent;

    invoke-interface {v1, v3, v5}, Lcom/taobao/android/nav/Nav$NavHooker;->hook(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 463
    new-instance v1, Lcom/taobao/android/nav/Nav$NavHookIntent;

    invoke-direct {v1, v4}, Lcom/taobao/android/nav/Nav$NavHookIntent;-><init>(Lcom/taobao/android/nav/Nav$1;)V

    return-object v1

    .line 468
    :cond_0
    iget-boolean v1, v0, Lcom/taobao/android/nav/Nav;->mSkipPriorHooker:Z

    const/4 v3, 0x0

    if-nez v1, :cond_3

    const/4 v1, 0x0

    .line 469
    :goto_0
    sget-object v5, Lcom/taobao/android/nav/Nav;->mPriorHookers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 470
    sget-object v5, Lcom/taobao/android/nav/Nav;->mPriorHookers:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    if-ne v5, v2, :cond_1

    goto :goto_1

    .line 473
    :cond_1
    sget-object v6, Lcom/taobao/android/nav/Nav;->mPriorHookers:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/taobao/android/nav/Nav$NavHooker;

    if-eqz v5, :cond_2

    .line 474
    iget-object v6, v0, Lcom/taobao/android/nav/Nav;->mContext:Landroid/content/Context;

    iget-object v7, v0, Lcom/taobao/android/nav/Nav;->mIntent:Landroid/content/Intent;

    invoke-interface {v5, v6, v7}, Lcom/taobao/android/nav/Nav$NavHooker;->hook(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 475
    new-instance v1, Lcom/taobao/android/nav/Nav$NavHookIntent;

    invoke-direct {v1, v4}, Lcom/taobao/android/nav/Nav$NavHookIntent;-><init>(Lcom/taobao/android/nav/Nav$1;)V

    return-object v1

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 481
    :cond_3
    iget-object v1, v0, Lcom/taobao/android/nav/Nav;->mIntent:Landroid/content/Intent;

    const-string v2, "referrer"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 482
    iget-object v1, v0, Lcom/taobao/android/nav/Nav;->mContext:Landroid/content/Context;

    instance-of v5, v1, Landroid/app/Activity;

    if-eqz v5, :cond_6

    .line 483
    nop

    nop

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 485
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 486
    iget-object v1, v0, Lcom/taobao/android/nav/Nav;->mIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 487
    :cond_4
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 488
    iget-object v1, v0, Lcom/taobao/android/nav/Nav;->mIntent:Landroid/content/Intent;

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v6, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 489
    :cond_5
    iget-object v5, v0, Lcom/taobao/android/nav/Nav;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 493
    :cond_6
    iget-object v3, v0, Lcom/taobao/android/nav/Nav;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 497
    :cond_7
    :goto_2
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    .line 499
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 500
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    .line 506
    sget-object v2, Lcom/taobao/android/nav/Nav;->mStickPreprocessor:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 507
    sget-object v2, Lcom/taobao/android/nav/Nav;->mStickPreprocessor:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/android/nav/Nav$NavPreprocessor;

    .line 509
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 510
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v5

    .line 512
    iget-object v7, v0, Lcom/taobao/android/nav/Nav;->mIntent:Landroid/content/Intent;

    invoke-interface {v3, v7}, Lcom/taobao/android/nav/Nav$NavPreprocessor;->beforeNavTo(Landroid/content/Intent;)Z

    move-result v17

    .line 514
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v8

    .line 515
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v12

    sub-long/2addr v12, v5

    .line 517
    sget-object v5, Lcom/taobao/android/nav/Nav;->sNavMonitor:Lcom/taobao/android/nav/Nav$NavigationTimeMonitor;

    if-eqz v5, :cond_9

    .line 518
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v14, ""

    move v7, v1

    invoke-interface/range {v5 .. v16}, Lcom/taobao/android/nav/Nav$NavigationTimeMonitor;->threadRunTimeInfo(Ljava/lang/String;IJJJLjava/lang/String;ILjava/util/concurrent/ThreadPoolExecutor;)V

    :cond_9
    if-nez v17, :cond_8

    return-object v4

    :cond_a
    if-eqz p2, :cond_e

    .line 525
    sget-object v2, Lcom/taobao/android/nav/Nav;->mPreprocessor:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    .line 526
    sget-object v2, Lcom/taobao/android/nav/Nav;->mPreprocessor:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/android/nav/Nav$NavPreprocessor;

    .line 528
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 529
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v5

    .line 533
    instance-of v7, v3, Lcom/taobao/android/nav/Nav$RedirectNavPreprocessor;

    if-eqz v7, :cond_c

    .line 534
    move-object v7, v3

    check-cast v7, Lcom/taobao/android/nav/Nav$RedirectNavPreprocessor;

    iget-object v10, v0, Lcom/taobao/android/nav/Nav;->mIntent:Landroid/content/Intent;

    invoke-interface {v7, v0, v10}, Lcom/taobao/android/nav/Nav$RedirectNavPreprocessor;->beforeNavTo(Lcom/taobao/android/nav/Nav;Landroid/content/Intent;)Z

    move-result v7

    goto :goto_3

    .line 536
    :cond_c
    iget-object v7, v0, Lcom/taobao/android/nav/Nav;->mIntent:Landroid/content/Intent;

    invoke-interface {v3, v7}, Lcom/taobao/android/nav/Nav$NavPreprocessor;->beforeNavTo(Landroid/content/Intent;)Z

    move-result v7

    :goto_3
    move/from16 v17, v7

    .line 539
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v8

    .line 540
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v12

    sub-long/2addr v12, v5

    .line 542
    sget-object v5, Lcom/taobao/android/nav/Nav;->sNavMonitor:Lcom/taobao/android/nav/Nav$NavigationTimeMonitor;

    if-eqz v5, :cond_d

    .line 543
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v14, ""

    move v7, v1

    invoke-interface/range {v5 .. v16}, Lcom/taobao/android/nav/Nav$NavigationTimeMonitor;->threadRunTimeInfo(Ljava/lang/String;IJJJLjava/lang/String;ILjava/util/concurrent/ThreadPoolExecutor;)V

    :cond_d
    if-nez v17, :cond_b

    return-object v4

    .line 550
    :cond_e
    iget-object v1, v0, Lcom/taobao/android/nav/Nav;->mIntent:Landroid/content/Intent;

    return-object v1
.end method

.method public static unregisterPreprocessor(Lcom/taobao/android/nav/Nav$NavPreprocessor;)V
    .locals 1

    .line 665
    sget-object v0, Lcom/taobao/android/nav/Nav;->mPreprocessor:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static unregisterStickPreprocessor(Lcom/taobao/android/nav/Nav$NavPreprocessor;)V
    .locals 1

    .line 657
    sget-object v0, Lcom/taobao/android/nav/Nav;->mStickPreprocessor:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public allowEscape()Lcom/taobao/android/nav/Nav;
    .locals 1

    const/4 v0, 0x1

    .line 214
    iput-boolean v0, p0, Lcom/taobao/android/nav/Nav;->mAllowLeaving:Z

    return-object p0
.end method

.method public allowLoopback()Lcom/taobao/android/nav/Nav;
    .locals 1

    const/4 v0, 0x0

    .line 226
    iput-boolean v0, p0, Lcom/taobao/android/nav/Nav;->mDisallowLoopback:Z

    return-object p0
.end method

.method public disableTransition()Lcom/taobao/android/nav/Nav;
    .locals 1

    const/4 v0, 0x1

    .line 232
    iput-boolean v0, p0, Lcom/taobao/android/nav/Nav;->mDisableTransition:Z

    return-object p0
.end method

.method public disallowLoopback()Lcom/taobao/android/nav/Nav;
    .locals 1

    const/4 v0, 0x1

    .line 220
    iput-boolean v0, p0, Lcom/taobao/android/nav/Nav;->mDisallowLoopback:Z

    return-object p0
.end method

.method public forResult(I)Lcom/taobao/android/nav/Nav;
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/taobao/android/nav/Nav;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 208
    iput p1, p0, Lcom/taobao/android/nav/Nav;->mRequestCode:I

    return-object p0

    .line 207
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Only valid from Activity, but from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/android/nav/Nav;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public skipHooker()Lcom/taobao/android/nav/Nav;
    .locals 1

    const/4 v0, 0x1

    .line 242
    iput-boolean v0, p0, Lcom/taobao/android/nav/Nav;->mSkipHooker:Z

    return-object p0
.end method

.method public skipPreprocess()Lcom/taobao/android/nav/Nav;
    .locals 1

    const/4 v0, 0x1

    .line 237
    iput-boolean v0, p0, Lcom/taobao/android/nav/Nav;->mSkipPreprocess:Z

    return-object p0
.end method

.method public skipPriorHooker()Lcom/taobao/android/nav/Nav;
    .locals 1

    const/4 v0, 0x1

    .line 247
    iput-boolean v0, p0, Lcom/taobao/android/nav/Nav;->mSkipPriorHooker:Z

    return-object p0
.end method

.method public stack(Landroid/net/Uri;)Lcom/taobao/android/nav/Nav;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 437
    iget v0, p0, Lcom/taobao/android/nav/Nav;->mRequestCode:I

    if-gez v0, :cond_1

    .line 438
    new-instance v0, Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/taobao/android/nav/Nav;->to(Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 440
    iget-object p1, p0, Lcom/taobao/android/nav/Nav;->mTaskStack:Ljava/util/List;

    if-nez p1, :cond_0

    .line 441
    new-instance p1, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/taobao/android/nav/Nav;->mTaskStack:Ljava/util/List;

    const/high16 p1, 0x10000000

    .line 442
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 443
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt p1, v1, :cond_0

    const p1, 0xc000

    .line 444
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 446
    :cond_0
    iget-object p1, p0, Lcom/taobao/android/nav/Nav;->mTaskStack:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    new-instance p1, Lcom/taobao/android/nav/Nav;

    iget-object v0, p0, Lcom/taobao/android/nav/Nav;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/taobao/android/nav/Nav;-><init>(Landroid/content/Context;)V

    .line 449
    iget-object v0, p0, Lcom/taobao/android/nav/Nav;->mTaskStack:Ljava/util/List;

    iput-object v0, p1, Lcom/taobao/android/nav/Nav;->mTaskStack:Ljava/util/List;

    return-object p1

    .line 437
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot stack URI for result"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toPendingUri(Landroid/net/Uri;II)Landroid/app/PendingIntent;
    .locals 2

    const/4 v0, 0x0

    .line 414
    invoke-direct {p0, p1, v0}, Lcom/taobao/android/nav/Nav;->to(Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/taobao/android/nav/Nav;->specify(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/nav/Nav;->mTaskStack:Ljava/util/List;

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 417
    iget-object p1, p0, Lcom/taobao/android/nav/Nav;->mTaskStack:Ljava/util/List;

    iget-object v0, p0, Lcom/taobao/android/nav/Nav;->mIntent:Landroid/content/Intent;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    iget-object p1, p0, Lcom/taobao/android/nav/Nav;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/taobao/android/nav/Nav;->mTaskStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/Intent;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/Intent;

    invoke-static {p1, p2, v0, p3}, Lcom/taobao/android/nav/Nav;->getActivities(Landroid/content/Context;I[Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1

    :cond_1
    const/high16 v0, 0x10000000

    .line 420
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 421
    iget-object v0, p0, Lcom/taobao/android/nav/Nav;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, p1, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public toUri(Landroid/net/Uri;)Z
    .locals 10

    .line 270
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Nav"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    sget-object v0, Lcom/taobao/android/nav/Nav;->mExceptionHandler:Lcom/taobao/android/nav/Nav$NavExceptionHandler;

    .line 274
    iget-object v2, p0, Lcom/taobao/android/nav/Nav;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    if-eqz v0, :cond_0

    .line 276
    iget-object p1, p0, Lcom/taobao/android/nav/Nav;->mIntent:Landroid/content/Intent;

    new-instance v2, Lcom/taobao/android/nav/Nav$NavigationCanceledException;

    const-string v4, "Context shouldn\'t null"

    invoke-direct {v2, v4}, Lcom/taobao/android/nav/Nav$NavigationCanceledException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1, v2}, Lcom/taobao/android/nav/Nav$NavExceptionHandler;->onException(Landroid/content/Intent;Ljava/lang/Exception;)Z

    :cond_0
    const-string p1, "Nav context was null"

    .line 277
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 281
    :cond_1
    invoke-direct {p0, p1}, Lcom/taobao/android/nav/Nav;->to(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_3

    if-eqz v0, :cond_2

    .line 284
    iget-object p1, p0, Lcom/taobao/android/nav/Nav;->mIntent:Landroid/content/Intent;

    new-instance v1, Lcom/taobao/android/nav/Nav$NavigationCanceledException;

    const-string v2, "Intent resolve was null"

    invoke-direct {v1, v2}, Lcom/taobao/android/nav/Nav$NavigationCanceledException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Lcom/taobao/android/nav/Nav$NavExceptionHandler;->onException(Landroid/content/Intent;Ljava/lang/Exception;)Z

    :cond_2
    return v3

    .line 286
    :cond_3
    instance-of v4, v2, Lcom/taobao/android/nav/Nav$NavHookIntent;

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    return v5

    :cond_4
    const/4 v4, 0x0

    .line 294
    :goto_0
    :try_start_0
    iget-boolean v6, p0, Lcom/taobao/android/nav/Nav;->mAllowLeaving:Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "No Activity found to handle "

    const/high16 v8, 0x10000

    if-eqz v6, :cond_8

    .line 295
    :try_start_1
    sget-object v6, Lcom/taobao/android/nav/Nav;->mNavResolver:Lcom/taobao/android/nav/Nav$NavResolver;

    iget-object v9, p0, Lcom/taobao/android/nav/Nav;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-interface {v6, v9, v2, v8}, Lcom/taobao/android/nav/Nav$NavResolver;->resolveActivity(Landroid/content/pm/PackageManager;Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    if-nez v6, :cond_7

    .line 301
    sget-object v6, Lcom/taobao/android/nav/Nav;->mNavResolver:Lcom/taobao/android/nav/Nav$NavResolver;

    iget-object v9, p0, Lcom/taobao/android/nav/Nav;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-interface {v6, v9, v2, v8}, Lcom/taobao/android/nav/Nav$NavResolver;->queryIntentActivities(Landroid/content/pm/PackageManager;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 304
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-lt v8, v5, :cond_5

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    goto :goto_1

    :cond_5
    move-object v6, v4

    :goto_1
    if-eqz v6, :cond_6

    .line 309
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 306
    :cond_6
    new-instance v6, Landroid/content/ActivityNotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 311
    :cond_7
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 315
    :cond_8
    iget-object v6, p0, Lcom/taobao/android/nav/Nav;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/taobao/android/internal/RuntimeGlobals;->isMultiPackageMode(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 317
    iget-object v6, p0, Lcom/taobao/android/nav/Nav;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    sget-object v6, Lcom/taobao/android/nav/Nav;->mNavResolver:Lcom/taobao/android/nav/Nav$NavResolver;

    iget-object v9, p0, Lcom/taobao/android/nav/Nav;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-interface {v6, v9, v2, v8}, Lcom/taobao/android/nav/Nav$NavResolver;->resolveActivity(Landroid/content/pm/PackageManager;Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    if-nez v6, :cond_a

    .line 324
    sget-object v6, Lcom/taobao/android/nav/Nav;->mNavResolver:Lcom/taobao/android/nav/Nav$NavResolver;

    iget-object v9, p0, Lcom/taobao/android/nav/Nav;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-interface {v6, v9, v2, v8}, Lcom/taobao/android/nav/Nav$NavResolver;->queryIntentActivities(Landroid/content/pm/PackageManager;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 327
    invoke-direct {p0, v6}, Lcom/taobao/android/nav/Nav;->optimum(Ljava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 331
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 329
    :cond_9
    new-instance v6, Landroid/content/ActivityNotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 333
    :cond_a
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    :goto_2
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    goto :goto_3

    .line 340
    :cond_b
    sget-object v6, Lcom/taobao/android/nav/Nav;->mNavResolver:Lcom/taobao/android/nav/Nav$NavResolver;

    iget-object v9, p0, Lcom/taobao/android/nav/Nav;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-interface {v6, v9, v2, v8}, Lcom/taobao/android/nav/Nav$NavResolver;->queryIntentActivities(Landroid/content/pm/PackageManager;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 343
    invoke-direct {p0, v6}, Lcom/taobao/android/nav/Nav;->optimum(Ljava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    if-eqz v6, :cond_14

    .line 346
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    .line 351
    :goto_3
    iget-boolean v6, p0, Lcom/taobao/android/nav/Nav;->mDisallowLoopback:Z

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/taobao/android/nav/Nav;->mContext:Landroid/content/Context;

    instance-of v6, v6, Landroid/app/Activity;

    if-eqz v6, :cond_c

    if-eqz v7, :cond_c

    .line 352
    iget-object v6, p0, Lcom/taobao/android/nav/Nav;->mContext:Landroid/content/Context;

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 353
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Loopback disallowed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 358
    :cond_c
    iget-object v6, p0, Lcom/taobao/android/nav/Nav;->mTaskStack:Ljava/util/List;

    if-eqz v6, :cond_d

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_d

    .line 359
    iget-object v6, p0, Lcom/taobao/android/nav/Nav;->mTaskStack:Ljava/util/List;

    iget-object v7, p0, Lcom/taobao/android/nav/Nav;->mIntent:Landroid/content/Intent;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    iget-object v6, p0, Lcom/taobao/android/nav/Nav;->mTaskStack:Ljava/util/List;

    iget-object v7, p0, Lcom/taobao/android/nav/Nav;->mTaskStack:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Landroid/content/Intent;

    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/content/Intent;

    iget-object v7, p0, Lcom/taobao/android/nav/Nav;->mOptions:Landroid/os/Bundle;

    invoke-direct {p0, v6, v7}, Lcom/taobao/android/nav/Nav;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_4

    .line 361
    :cond_d
    iget v6, p0, Lcom/taobao/android/nav/Nav;->mRequestCode:I

    const/16 v7, 0x10

    if-ltz v6, :cond_f

    .line 362
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v7, :cond_e

    .line 363
    iget-object v6, p0, Lcom/taobao/android/nav/Nav;->mContext:Landroid/content/Context;

    check-cast v6, Landroid/app/Activity;

    iget v7, p0, Lcom/taobao/android/nav/Nav;->mRequestCode:I

    iget-object v8, p0, Lcom/taobao/android/nav/Nav;->mOptions:Landroid/os/Bundle;

    invoke-virtual {v6, v2, v7, v8}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_4

    .line 365
    :cond_e
    iget-object v6, p0, Lcom/taobao/android/nav/Nav;->mContext:Landroid/content/Context;

    check-cast v6, Landroid/app/Activity;

    iget v7, p0, Lcom/taobao/android/nav/Nav;->mRequestCode:I

    invoke-virtual {v6, v2, v7}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_4

    .line 368
    :cond_f
    iget-object v6, p0, Lcom/taobao/android/nav/Nav;->mContext:Landroid/content/Context;

    instance-of v6, v6, Landroid/app/Activity;

    if-nez v6, :cond_10

    const/high16 v6, 0x10000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 369
    :cond_10
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v7, :cond_11

    .line 370
    iget-object v6, p0, Lcom/taobao/android/nav/Nav;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/taobao/android/nav/Nav;->mOptions:Landroid/os/Bundle;

    invoke-virtual {v6, v2, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_4

    .line 372
    :cond_11
    iget-object v6, p0, Lcom/taobao/android/nav/Nav;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 376
    :goto_4
    iget-boolean v6, p0, Lcom/taobao/android/nav/Nav;->mDisableTransition:Z

    if-nez v6, :cond_12

    sget-object v6, Lcom/taobao/android/nav/Nav;->mTransition:[I

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/taobao/android/nav/Nav;->mContext:Landroid/content/Context;

    instance-of v6, v6, Landroid/app/Activity;

    if-eqz v6, :cond_12

    .line 377
    iget-object v6, p0, Lcom/taobao/android/nav/Nav;->mContext:Landroid/content/Context;

    check-cast v6, Landroid/app/Activity;

    sget-object v7, Lcom/taobao/android/nav/Nav;->mTransition:[I

    aget v7, v7, v3

    sget-object v8, Lcom/taobao/android/nav/Nav;->mTransition:[I

    aget v8, v8, v5

    invoke-virtual {v6, v7, v8}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 380
    :cond_12
    invoke-direct {p0}, Lcom/taobao/android/nav/Nav;->isDebug()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 381
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    .line 382
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x1400

    if-le v7, v8, :cond_13

    .line 384
    iget-object v7, p0, Lcom/taobao/android/nav/Nav;->mContext:Landroid/content/Context;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Your url : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is too large which may cause Exception, plz check it!"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    :cond_13
    return v5

    .line 344
    :cond_14
    new-instance v6, Landroid/content/ActivityNotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v6

    .line 392
    invoke-direct {p0}, Lcom/taobao/android/nav/Nav;->isDebug()Z

    move-result v7

    if-eqz v7, :cond_15

    iget-object v7, p0, Lcom/taobao/android/nav/Nav;->mContext:Landroid/content/Context;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " CANN\'T FOUND RESOLVED ACTIVITY"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    :cond_15
    if-eqz v0, :cond_16

    .line 394
    invoke-interface {v0, v2, v6}, Lcom/taobao/android/nav/Nav$NavExceptionHandler;->onException(Landroid/content/Intent;Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_16

    move-object v0, v4

    goto/16 :goto_0

    :cond_16
    return v3
.end method

.method public toUri(Lcom/taobao/android/nav/NavUri;)Z
    .locals 0

    .line 252
    invoke-virtual {p1}, Lcom/taobao/android/nav/NavUri;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/android/nav/Nav;->toUri(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method

.method public toUri(Ljava/lang/String;)Z
    .locals 1

    .line 260
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 263
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/android/nav/Nav;->toUri(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method

.method public withCategory(Ljava/lang/String;)Lcom/taobao/android/nav/Nav;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/taobao/android/nav/Nav;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public withExtras(Landroid/os/Bundle;)Lcom/taobao/android/nav/Nav;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/nav/Nav;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return-object p0
.end method

.method public withFlags(I)Lcom/taobao/android/nav/Nav;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/taobao/android/nav/Nav;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object p0
.end method

.method public withOptions(Landroid/os/Bundle;)Lcom/taobao/android/nav/Nav;
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/taobao/android/nav/Nav;->mOptions:Landroid/os/Bundle;

    return-object p0
.end method
