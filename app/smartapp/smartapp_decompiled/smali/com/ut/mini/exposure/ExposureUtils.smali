.class public Lcom/ut/mini/exposure/ExposureUtils;
.super Ljava/lang/Object;
.source "ExposureUtils.java"


# static fields
.field static final UT_EXPOSURE_SPM_A:Ljava/lang/String; = "x-spm-a"

.field static final UT_EXPOSURE_SPM_B:Ljava/lang/String; = "x-spm-b"

.field static final UT_EXPOSURE_SPM_C:Ljava/lang/String; = "x-spm-c"

.field static final UT_EXPOSURE_SPM_D:Ljava/lang/String; = "x-spm-d"

.field protected static final UT_EXPROSURE_ARGS:Ljava/lang/String; = "UT_EXPROSURE_ARGS"

.field protected static final UT_EXPROSURE_BLOCK:Ljava/lang/String; = "UT_EXPROSURE_BLOCK"

.field protected static final UT_EXPROSURE_VIEWID:Ljava/lang/String; = "UT_EXPROSURE_VIEWID"

.field public static final ut_exposure_data_spm:I = -0x426e

.field public static final ut_exposure_root_spm:I = -0x426d

.field public static final ut_exprosure_common_info_tag:I = -0x426b

.field public static final ut_exprosure_ignore_tag:I = -0x426c

.field public static final ut_exprosure_tag:I = -0x4269

.field public static final ut_exprosure_tag_for_weex:I = -0x426a


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected static clearExposureForWeex(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    .line 103
    new-array p0, p0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "error,view is null"

    aput-object v2, p0, v1

    invoke-static {v0, p0}, Lcom/ut/mini/exposure/ExpLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/16 v1, -0x426a

    .line 106
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public static clearIgnoreTagForExposureView(Landroid/view/View;)V
    .locals 2

    if-eqz p0, :cond_0

    const/16 v0, -0x426c

    const/4 v1, 0x0

    .line 149
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static isExposureView(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/16 v1, -0x4269

    .line 129
    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isExposureViewForWeex(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/16 v1, -0x426a

    .line 121
    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isIngoneExposureView(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/16 v1, -0x426c

    .line 137
    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static setExposure(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_0

    .line 44
    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "error,view is null"

    aput-object p1, p0, v0

    invoke-static {v2, p0}, Lcom/ut/mini/exposure/ExpLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 47
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 48
    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "error,block is empty"

    aput-object p1, p0, v0

    invoke-static {v2, p0}, Lcom/ut/mini/exposure/ExpLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 51
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 52
    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "error,viewId is empty"

    aput-object p1, p0, v0

    invoke-static {v2, p0}, Lcom/ut/mini/exposure/ExpLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 55
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "UT_EXPROSURE_BLOCK"

    .line 56
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "UT_EXPROSURE_VIEWID"

    .line 57
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_3

    const-string p1, "UT_EXPROSURE_ARGS"

    .line 59
    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/16 p1, -0x4269

    .line 62
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public static setExposureForWeex(Landroid/view/View;)V
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x1

    .line 111
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "error,view is null"

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcom/ut/mini/exposure/ExpLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/16 v0, -0x426a

    const-string v1, "auto"

    .line 114
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public static setExposureSpmAB(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_0

    .line 67
    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "error,view is null"

    aput-object p1, p0, v0

    invoke-static {v2, p0}, Lcom/ut/mini/exposure/ExpLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 71
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 76
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "x-spm-a"

    .line 77
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "x-spm-b"

    .line 78
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, -0x426d

    .line 80
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void

    .line 72
    :cond_2
    :goto_0
    new-array p0, v1, [Ljava/lang/Object;

    const-string/jumbo p1, "spmA or spmB is empty"

    aput-object p1, p0, v0

    invoke-static {v2, p0}, Lcom/ut/mini/exposure/ExpLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static setExposureSpmCD(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_0

    .line 85
    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "error,view is null"

    aput-object p1, p0, v0

    invoke-static {v2, p0}, Lcom/ut/mini/exposure/ExpLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 89
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 94
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "x-spm-c"

    .line 95
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "x-spm-d"

    .line 96
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, -0x426e

    .line 98
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void

    .line 90
    :cond_2
    :goto_0
    new-array p0, v1, [Ljava/lang/Object;

    const-string/jumbo p1, "spmC or spmD is empty"

    aput-object p1, p0, v0

    invoke-static {v2, p0}, Lcom/ut/mini/exposure/ExpLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static setIgnoreTagForExposureView(Landroid/view/View;)V
    .locals 2

    if-eqz p0, :cond_0

    const/16 v0, -0x426c

    const-string/jumbo v1, "user"

    .line 143
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
